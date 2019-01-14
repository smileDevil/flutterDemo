import 'package:flutter/material.dart';

class My_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new MyPageState();
}

class MyPageState extends State<My_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:  Text("我的"),
        actions: <Widget>[
          new Container(
            
          )
        ],),
        body: Center(
          child: Image.asset('images/test.jpeg'),
        ),
      ),
    );
  }
}