import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:provider/provider.dart';

import 'indexpage.dart';
import 'package:path_provider/path_provider.dart';

void main() async {


  runApp(const MyApp());
}



  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      
    

      return const MaterialApp(

        home:Index(),
        debugShowCheckedModeBanner: false
      );
    }
  }
