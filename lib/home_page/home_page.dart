import 'package:flutter/material.dart';
import 'package:flutter_app/Login/login.dart';
class HomePage extends StatefulWidget{
 @override
   State<StatefulWidget> createState() => new _HomePageState();
}

class Product {
   final String title; // 商品标题
   final String descripton;//描述
   final Icon icon;
   Product(this.title,this.descripton,this.icon);
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
          products: List.generate(20, (i)=>Product('商品$i','编号为$i',null)),//动态创建数据
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
            leading: products[index].icon,
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


  //创建数组
  List<String> strItems = <String>[
    '图标 -> keyboard', '图标 -> print',
    '图标 -> router', '图标 -> pages',
    '图标 -> zoom_out_map', '图标 -> zoom_out',
    '图标 -> youtube_searched_for', '图标 -> wifi_tethering',
    '图标 -> wifi_lock', '图标 -> widgets',
    '图标 -> weekend', '图标 -> web',
    '图标 -> accessible', '图标 -> ac_unit',
];

List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard), new Icon(Icons.print),
    new Icon(Icons.router), new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
    new Icon(Icons.weekend), new Icon(Icons.web),
    new Icon(Icons.accessible), new Icon(Icons.ac_unit),
];



//创建详情页
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