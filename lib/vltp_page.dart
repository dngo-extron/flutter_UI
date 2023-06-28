import 'package:flutter/material.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class VTLPPage extends StatefulWidget {
  const VTLPPage({super.key});

  @override
  State<VTLPPage> createState() => _VTLPPageState();
}

class _VTLPPageState extends State<VTLPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebView'),
        ),
        body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(InfoState.getUrl())),
          onReceivedServerTrustAuthRequest: (controller, challenge) async {
            return ServerTrustAuthResponse(
                action: ServerTrustAuthResponseAction.PROCEED);
          },
        ));
  }
}
