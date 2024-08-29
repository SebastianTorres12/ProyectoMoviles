import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector64;

import 'emprendimientos_list_screen.dart';

class ArProductoScreen extends StatefulWidget {
  final String productoMasVendido;
  final String descripcionProducto;

  const ArProductoScreen({
    super.key,
    required this.productoMasVendido,
    required this.descripcionProducto,
  });

  @override
  State<ArProductoScreen> createState() => _ArProductoScreenState();
}

class _ArProductoScreenState extends State<ArProductoScreen> {
  ArCoreController? augmentedRealityCoreController;
  Key _arViewKey = UniqueKey();

  @override
  void dispose() {
    try {
      augmentedRealityCoreController?.dispose();
    } catch (e) {
      print("Error al liberar los recursos de ARCore: $e");
    }

    // Navegar de vuelta a la lista de emprendimientos
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => EmprendimientosListScreen()),
    );

    super.dispose();
  }

  void augmentedRealityViewCreated(ArCoreController coreController) {
    try {
      augmentedRealityCoreController = coreController;
      displayProductCube(coreController);
    } catch (e) {
      print("Error al inicializar ArCore: $e");
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text(
              'No se pudo inicializar la realidad aumentada. Por favor, intente nuevamente.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    }
  }

  Future<void> displayProductCube(ArCoreController coreController) async {
    if (coreController == null) return;
    try {
      final ByteData productTextureBytes =
          await rootBundle.load(widget.productoMasVendido);

      final materials = ArCoreMaterial(
        color: Colors.transparent,
        textureBytes: productTextureBytes.buffer.asUint8List(),
      );

      final cube = ArCoreCube(
        materials: [materials],
        size: vector64.Vector3(1.0, 1.0, 1.0),
      );

      final node = ArCoreNode(
        shape: cube,
        position: vector64.Vector3(0, 0, -1.5),
        scale: vector64.Vector3(1.0, 1.0, 1.0),
      );

      coreController.addArCoreNode(node);
    } catch (e) {
      print("Error al mostrar el cubo: $e");
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text(
              'No se pudo mostrar el producto en realidad aumentada. Por favor, intente nuevamente.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
    }
  }

  void _reiniciarArView() {
    // Limpia el controlador ARCore
    augmentedRealityCoreController?.dispose();
    augmentedRealityCoreController = null;

    // Cambia la clave para forzar la recreación del ArCoreView
    setState(() {
      _arViewKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navegar de vuelta a la lista de emprendimientos
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => EmprendimientosListScreen()),
        );
        return false; // Prevenir que se ejecute la acción de retroceso por defecto
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AR Producto"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _reiniciarArView,
            ),
          ],
        ),
        body: Stack(
          children: [
            ArCoreView(
              key: _arViewKey,
              onArCoreViewCreated: augmentedRealityViewCreated,
            ),
            Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.black.withOpacity(0.7),
                child: Text(
                  widget.descripcionProducto,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
