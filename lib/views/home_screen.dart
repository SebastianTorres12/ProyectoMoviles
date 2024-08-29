import 'package:flutter/material.dart';
import 'emprendimientos_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo de la app
            Image.asset(
              'assets/logo.png', // Asegúrate de que la imagen del logo esté en la carpeta assets
              width: 300, // Ajusta el tamaño según sea necesario
              height: 300,
            ),
            SizedBox(height: 30),
            // Botón para ir al listado de negocios
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Color(0xFF002366), // Color del texto del botón
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmprendimientosListScreen()),
                );
              },
              child: Text('Ingresar'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white, // Fondo de la pantalla en tono morado claro
    );
  }
}
