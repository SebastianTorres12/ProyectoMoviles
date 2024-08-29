class Emprendimiento {
  final String nombre;
  final String descripcion;
  final String direccion;
  final String streetViewUrl;
  final String productoMasVendido; // Ruta de la imagen del producto más vendido
  final String descripcionProducto; // Descripción del producto más vendido

  Emprendimiento({
    required this.nombre,
    required this.descripcion,
    required this.direccion,
    required this.streetViewUrl,
    required this.productoMasVendido, // Inicialización de la ruta de la imagen del producto más vendido
    required this.descripcionProducto, // Inicialización de la descripción del producto más vendido
  });
}
