import 'package:flutter/material.dart';

class Mypage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new MyPageState();
}

class MyPageState extends State<Mypage>{

  var titles = ["我的消息", "阅读记录", "我的博客", "我的问答", "我的活动", "我的团队", "邀请好友"];
  var imagePaths = [
    "images/unload.png",
    "images/unload.png",
    "images/unload.png",
    "images/unload.png",
    "images/unload.png",
    "images/unload.png",
    "images/unload.png"
  ];
  @override
  Widget build(BuildContext context) {
   // return  _showCustomScrollView();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:  Text("我的"),
        actions: <Widget>[
          new Container(
            
          )
        ],
        
        ),
       // body: _showCustomScrollView(),
        body: Center(
          child: Image.asset('images/test.jpeg'),
        ),
      ),
    );
  }

//  Widget  _showCustomScrollView() {
//      return new CustomScrollView(
//        reverse: false,
//        shrinkWrap: false,
//        slivers: <Widget>[
//          SliverAppBar(
//            title: Text('我的'),
//            pinned: false,
//            leading: IconButton(icon: Icon(Icons.menu),
//             onPressed: (){},
//           ),
//            backgroundColor: Colors.blue,
//            expandedHeight: 200,
//            //iconTheme: IconThemeData(color:Colors.transparent),
//            flexibleSpace: InkWell(
//              onTap: (){
//                debugPrint('test');
//              },
//              child:Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  new Image.asset('images/unload.png',width: 60,height: 60),
//                  new Container(
//                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                    child: Text('点击头像登陆',style: TextStyle(
//                      color: Colors.white,fontSize: 16.0
//                    ),),
//                  )
//                ],
//              ),
//            ),
//          ),
//         new SliverFixedExtentList(
//           delegate: new SliverChildBuilderDelegate(
//             (BuildContext context, int index){
//                String title = titles[index];
//                return Container(
//                  alignment: Alignment.centerLeft,
//                  child: InkWell(
//                    onTap: (){
//                      print("this is the item of $title");
//                    },
//                    child: Column(
//                      children: <Widget>[
//                        Padding(
//                          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                          child: new Row(
//                            children: <Widget>[
//                              new Expanded(
//                              child:  Text(
//                                title, style: TextStyle(fontSize: 16),
//                              ),
//                            ),
//                            new Image.asset('images/arrow-right.png')
//                            ],
//                          ),
//                        ),
//                        new Divider(
//                          height: 1.0,
//                        )
//                      ],
//                    ),
//                  ),
//                ); 
//             }
//           ),
//         )
//        ],
//      );

//   }

}