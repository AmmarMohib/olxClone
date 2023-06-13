import 'dart:io';

import 'package:flutter/material.dart';
import 'package:olx_clone/routes/login/loginPage.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TAC extends StatefulWidget {
  const TAC({Key? key}) : super(key: key);
  // final CookieManager? cookieManager;

  static const String routeName = '/terms-page';

  @override
  State<TAC> createState() => _TACState();
}

class _TACState extends State<TAC> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      // WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // actions: const [Align(
          //   alignment: Alignment.bottomRight,
          // child: Icon(
          //   Icons.close,
          //   color: Colors.black,
          //   ))],
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
          elevation: 0,
        ),
        // body: const WebView(
        //   initialUrl: 'https://help.olx.com.pk/hc/en-us',
        // ),
        body: Text("terms and Conditions Page"),
      ),
    );
  }
}
