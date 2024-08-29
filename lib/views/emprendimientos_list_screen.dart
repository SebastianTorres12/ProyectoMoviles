import 'package:flutter/material.dart';
import 'package:proyecto_negocios_ra/views/street_view_screen.dart';
import 'package:proyecto_negocios_ra/views/ar_producto_screen.dart';
import '../models/empredimiento.dart';
import '../services/empredimiento_service.dart';

class EmprendimientosListScreen extends StatefulWidget {
  @override
  _EmprendimientosListScreenState createState() => _EmprendimientosListScreenState();
}

class _EmprendimientosListScreenState extends State<EmprendimientosListScreen> {
  late Future<List<Emprendimiento>> futureEmprendimientos;

  @override
  void initState() {
    super.initState();
    futureEmprendimientos = EmprendimientoService().obtenerEmprendimientos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emprendimientos'),
        backgroundColor: Color(0xFF002366), // Azul marino para la AppBar
      ),
      body: FutureBuilder<List<Emprendimiento>>(
        future: futureEmprendimientos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(color: Color(0xFFFFA500)), // Indicador de progreso en naranja brillante
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}', style: TextStyle(color: Colors.red, fontSize: 18)), // Texto de error en rojo
            );
          } else if (snapshot.hasData) {
            final emprendimientos = snapshot.data!;
            return ListView.builder(
              itemCount: emprendimientos.length,
              itemBuilder: (context, index) {
                final emprendimiento = emprendimientos[index];
                return Card(
                  color: Color(0xFFEBF5FF), // Fondo de la tarjeta en azul claro
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados en las tarjetas
                  ),
                  elevation: 5, // Sombra en las tarjetas para darle profundidad
                  child: ListTile(
                    title: Text(
                      emprendimiento.nombre,
                      style: TextStyle(color: Color(0xFF002366), fontWeight: FontWeight.bold), // Texto principal en azul marino y en negrita
                    ),
                    subtitle: Text(
                      emprendimiento.descripcion,
                      style: TextStyle(color: Colors.grey.shade700), // Texto secundario en gris oscuro
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.streetview, color: Color(0xFFFFA500)), // Ícono en naranja brillante
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StreetViewScreen(
                                  streetViewUrl: emprendimiento.streetViewUrl,
                                ),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.visibility, color: Color(0xFFFFA500)), // Ícono en naranja brillante
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArProductoScreen(
                                  productoMasVendido: emprendimiento.productoMasVendido,
                                  descripcionProducto: emprendimiento.descripcionProducto,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Center(
            child: Text('No hay datos disponibles', style: TextStyle(color: Color(0xFF002366), fontSize: 18)), // Mensaje de "No hay datos" en azul marino
          );
        },
      ),
    );
  }
}
