import 'package:flames/screens/flames.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/st',
      routes: {
                '/st':(context)=>FlamesScreen(),
      },
    );
  }
}