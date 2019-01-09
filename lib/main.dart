import 'package:flutter/material.dart';

import 'package:flutter_app/index/index.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'demo',
      home: new Index(),
    );
  }
}