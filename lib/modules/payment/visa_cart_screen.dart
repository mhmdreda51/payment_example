import 'package:flutter/material.dart';
import 'package:payment_project/modules/register/register.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../shared/components/constants.dart';
import '../../shared/router.dart';
import '../../shared/style/colors.dart';

class VisaCartScreen extends StatelessWidget {
  VisaCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        backgroundColor: defColor,
        leading: IconButton(
          onPressed: () => MagicRouter.navigateTo(const RegisterScreen()),
          icon: const Icon(Icons.exit_to_app),
        ),
      ),
      body: WebView(
        initialUrl: frame,
        javascriptMode: JavascriptMode.unrestricted,
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        javascriptChannels: <JavascriptChannel>{
          _toasterJavascriptChannel(context),
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        gestureNavigationEnabled: true,
        backgroundColor: const Color(0x00000000),
      ),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}
