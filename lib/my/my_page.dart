import 'package:flutter/material.dart';

class Mypage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new MyPageState();
}

class MyPageState extends State<Mypage>{
  @override
  Widget build(BuildContext context) {
   
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