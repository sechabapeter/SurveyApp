import 'package:final_project/ui/view/landing_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final debug = false;

void main() async {
  runApp(MyApp());
}
///This is the main class where everything start
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      ///We navigate to Landing Page
      home: LandingView(),
    );
  }
}
