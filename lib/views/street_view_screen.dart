import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StreetViewScreen extends StatelessWidget {
  final String streetViewUrl;

  StreetViewScreen({required this.streetViewUrl});

  @override
  Widget build(BuildContext context) {
    // Configura el WebViewController
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Puedes agregar un indicador de progreso aquí si lo deseas
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {
            // Manejo de errores HTTP
          },
          onWebResourceError: (WebResourceError error) {
            // Manejo de errores de recursos web
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(streetViewUrl));

    return Scaffold(
      appBar: AppBar(
        title: Text('Street View'),
        backgroundColor: Color(0xFF002366), // Fondo morado para la AppBar
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
