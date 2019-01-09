import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
 @override
   State<StatefulWidget> createState() => new _HomePageState();
}

class Product {
   final String title; // 商品标题
   final String descripton;//描述

   Product(this.title,this.descripton);

}

class _HomePageState extends State<HomePage>{
  
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar:new AppBar(
          title:  new Text("首页"),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: ProductList(

        )
      )
    );
  }

}

class ProductList extends StatelessWidget {

final List<Product> products;

ProductList({Key key, @required this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}