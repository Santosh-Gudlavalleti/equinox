import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  //setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: title,
      home: Homepage(),
    );
  }
}
