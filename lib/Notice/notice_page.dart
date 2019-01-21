import 'package:flutter/material.dart';

class Noticepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _NoticePage();
}


class _NoticePage extends State<Noticepage>{
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("消息"),
           actions: <Widget>[
             new Container()
           ],
         ),
         body: Center(
           child: null,
         ),
       ),
    );
  }
}