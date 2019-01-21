import 'package:flutter/material.dart';
  class Ideapage extends StatefulWidget{
   State<StatefulWidget> createState() => new _IdeaPageState();
  }

  class _IdeaPageState extends State<Ideapage>{
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('想法'),
        actions: <Widget>[
          new Container()
        ],),
        body: Center(
          child: null,
        ),
      ),
    );
  }
}