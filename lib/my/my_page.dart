import 'package:flutter/material.dart';

class Mypage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new MyPageState();
}

class MyPageState extends State<Mypage>{
  @override
  Widget build(BuildContext context) {
    return  _showCustomScrollView();
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(title:  Text("我的"),
    //     actions: <Widget>[
    //       new Container(
            
    //       )
    //     ],
        
    //     ),
    //     body: _showCustomScrollView(),
    //     // body: Center(
    //     //   child: Image.asset('images/test.jpeg'),
    //     // ),
    //   ),
    // );
  }

   _showCustomScrollView() {
     return new CustomScrollView(
       reverse: false,
       shrinkWrap: false,
       slivers: <Widget>[
         SliverAppBar(
           title: Text('我的'),
           pinned: false,
           backgroundColor: Colors.greenAccent,
           expandedHeight: 200,
           iconTheme: IconThemeData(color:Colors.transparent),
           flexibleSpace: InkWell(
             onTap: (){
               debugPrint('test');
             },
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 new Image.asset('images/unload.png',width: 60,height: 60),
                 new Container(
                   margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                   child: Text('点击头像登陆',style: TextStyle(
                     color: Colors.white,fontSize: 16.0
                   ),),
                 )
               ],
             ),
           ),
         ),

       ],
     );

  }

}