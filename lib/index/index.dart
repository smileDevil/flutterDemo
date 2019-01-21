import 'package:flutter/material.dart';
import 'package:flutter_app/Notice/notice_page.dart';
import 'package:flutter_app/home_page/home_page.dart';
import 'package:flutter_app/idea/idea_page.dart';
import 'package:flutter_app/market/market_page.dart';
import 'package:flutter_app/my/my_page.dart';

import 'navigation_icon_view.dart';// 如果是在同一个包的路径下，可以直接使用对应的文件名

// 创建一个 带有状态的 Widget Index
class Index extends StatefulWidget{
  //  固定的写法
  @override
 State<StatefulWidget> createState()  =>  new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{


    int _currentIndex = 0; // 当前界面索引值
    List<NavigationIconView> _navigationViews;// 底部图标按钮区域
    List<StatefulWidget> _pageList;// // 用来存放我们的图标对应的页面
    StatefulWidget _currentPage;// 当前的显示页面

   // 定义一个空的设置状态值的方法
   void _rebuild() {
      setState(() {
              
            });
    }

    @override
    void initState(){
      super.initState();

      _navigationViews = <NavigationIconView>[
        new NavigationIconView(icon:  new Icon(Icons.assessment) ,title: new Text('首页'),vsync: this),
        new NavigationIconView(icon: new Icon(Icons.all_inclusive), title: new Text("想法"), vsync: this),
        new NavigationIconView(icon: new Icon(Icons.add_shopping_cart), title: new Text("市场"), vsync: this),
        new NavigationIconView(icon: new Icon(Icons.add_alert), title: new Text("通知"), vsync: this),
        new NavigationIconView(icon: new Icon(Icons.perm_identity), title: new Text("我的"), vsync: this),

      ];

      //给每一个按钮加上监听
      for(NavigationIconView view in _navigationViews){
        view.controller.addListener(_rebuild);
      }

      // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
      _pageList = <StatefulWidget>[
        new HomePage(),
        new Ideapage(),
        new Marketpage(),
        new Noticepage(),
        new Mypage(),
      ];
      _currentPage = _pageList[_currentIndex];
    }

@override
    Widget build (BuildContext context){
      // 初始化导航图标
      final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items:  _navigationViews.map(
          (NavigationIconView navigationIconView) => navigationIconView.item
        ).toList(),// 添加 icon 按钮
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // 设置底部导航工具栏的类型：fixed 固定
        onTap: (int index){
          setState(() {
                  _navigationViews[_currentIndex].controller.reverse();
                  _currentIndex = index;
                  _navigationViews[_currentIndex].controller.forward();
                  _currentPage = _pageList[_currentIndex];    
                    });
        },
      );

      return MaterialApp(
        home:  new Scaffold(
          body: new Center(
            child: _currentPage,// 动态的展示我们当前的页面
          ),
          bottomNavigationBar: bottomNavigationBar,// 底部工具栏
        ),
        theme:  new ThemeData(
          primarySwatch: Colors.blue,// 设置主题颜色
        ),
      );
      
    }
}