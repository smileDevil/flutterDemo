import 'package:flutter/material.dart';
  class Ideapage extends StatefulWidget{
   State<StatefulWidget> createState() => new _IdeaPageState();
  }

  class _IdeaPageState extends State<Ideapage>{

    @override
  void initState() {
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(225, 250, 150, 150)),
      home: Scaffold(
        appBar: AppBar(title: Row(
          children: <Widget>[
            ClipOval(
              child: Image.asset('images/longnv5.jpeg', height: 25.0,),
            )
          ],
        ),
        centerTitle: true,
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