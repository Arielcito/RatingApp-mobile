import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidgetExample extends StatelessWidget {
  WebViewWidgetExample({Key? key}) : super(key: key);

  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          debugPrint("Loading: $progress%");
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
        Uri.parse("https://www.youtube.com/embed/a3ICNMQW7Ok?autoplay=1")); // Acá va la URL de lo que quieras

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
