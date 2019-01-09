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
          products: List.generate(20, (i)=>Product('商品$i','编号为$i')),
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
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title:  Text(products[index].title),
            subtitle: Text(products[index].descripton),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ProductDetail(product:products[index])
                )
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  ProductDetail({Key key , @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('${product.title}'),),
        body: Center(
         child:  Text('${product.descripton}')
        ),
        // body: RaisedButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   child: Text('${product.descripton}'),
        // ),
      );
  }
}