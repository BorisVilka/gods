
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WebState();
  }

}

class WebState extends State<WebScreen> {

  late WebViewController controller;
  //var vol = Player.instance.getMusicLevel();

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft
    ]);
   // Player.instance.setMusicLevel(vol);
    super.dispose();
  }

  @override
  void initState() {
    //Player.instance.setMusicLevel(0);
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            /*if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }*/
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.termsfeed.com/live/a37b6884-6c42-4d25-950c-db4a3895fed9'));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Player.instance.pause();
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }

}