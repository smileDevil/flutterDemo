import 'package:flutter/material.dart';


import 'Login/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 
    return MaterialApp(
      title: 'demo',
      home: new LoginPage(),
    );
  }
}