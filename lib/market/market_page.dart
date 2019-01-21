import 'package:flutter/material.dart';

class Marketpage extends StatefulWidget{
@override
  State<StatefulWidget> createState() => new _MarketPageState();
}

class _MarketPageState extends State<Marketpage>{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('市场'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: Center(
          child:  null,
        ) ,
      )
    );
  }
}