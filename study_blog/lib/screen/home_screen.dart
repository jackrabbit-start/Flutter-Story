import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('김기현'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.loadUrl('https://blog.codefactory.ai');
                  }
                },
                icon: Icon(
                  Icons.home,
                )),
            IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.goBack();
                  }
                },
                icon: Icon(
                  Icons.arrow_left,
                )),
            IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.goForward();
                  }
                },
                icon: Icon(
                  Icons.arrow_right,
                )),
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          initialUrl: 'https://blog.codefactory.ai',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
