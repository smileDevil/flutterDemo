import 'package:flutter/material.dart';

class Notice_page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _NoticePage();
}


class _NoticePage extends State<Notice_page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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