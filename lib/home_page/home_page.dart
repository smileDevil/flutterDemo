import 'package:flutter/material.dart';
import 'package:flutter_app/Login/login.dart';
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
          leading: IconButton(icon: Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.menu),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
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
            onTap: (){_navigateToDetail(context,products[index]);},
            // onTap: (){
            //   Navigator.push(
            //     context, 
            //     MaterialPageRoute(
            //       builder: (context) => ProductDetail(product:products[index])
            //     )
            //   );
            // },
          );
        },
      ),
    );
  }

  _navigateToDetail(BuildContext context,Product passProduct) async{ //一异步方法
    final result = await Navigator.push(context,  MaterialPageRoute(
                  builder: (context) => ProductDetail(product:passProduct)
                ));
                Scaffold.of(context).showSnackBar(SnackBar(content:Text('$result'),duration: Duration(seconds: 2)));
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
         child: RaisedButton(
           onPressed: (){
            Navigator.pop(context,'111');
           },
           child: Text('${product.descripton}'),
         )

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