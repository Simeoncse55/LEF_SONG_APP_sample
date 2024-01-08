import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
 late WebViewController _controller;
 @override void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()..loadRequest(
      Uri.parse('http://google.com')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Color(0xFF602A19),
    title: Text('LEF Chruch'),
  ),



    );
  }
}
