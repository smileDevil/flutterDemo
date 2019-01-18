import 'package:flutter/material.dart';

class Market_page extends StatefulWidget{
@override
  State<StatefulWidget> createState() => new _MarketPageState();
}

class _MarketPageState extends State<Market_page>{
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