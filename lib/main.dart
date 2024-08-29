import 'package:flutter/material.dart';
import 'views/home_screen.dart'; // Importa la nueva pantalla de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('App state changed to: $state');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emprendimientos App',
      theme: ThemeData(
        primaryColor: Color(0xFF002366), // Azul marino como color principal
        hintColor: Color(0xFFFFA500), // Azul claro como color de fondo
        fontFamily: 'Roboto', // Fuente principal Roboto
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFF002366), // Botones en azul marino
          textTheme: ButtonTextTheme.primary, // Texto de botones en blanco
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Bordes redondeados en los botones
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF002366), // AppBar en azul marino
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold), // Texto de AppBar en blanco
          iconTheme: IconThemeData(color: Color(0xFFFFA500)), // Iconos en naranja brillante
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontSize: 16), // Texto principal en negro
          bodyMedium: TextStyle(color: Colors.grey.shade800, fontSize: 14), // Texto secundario en gris oscuro
          labelLarge: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold), // Texto de botones en blanco
        ),
      ),
      home: HomeScreen(), // Pantalla de inicio
      debugShowCheckedModeBanner: false, // Desactiva el banner de depuración
    );
  }
}
