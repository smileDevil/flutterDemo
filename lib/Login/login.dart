import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
     
      return new _loginpageState();
    }
}

class _loginpageState extends State<LoginPage>{

   var leftRightPadding = 30.0;
   var topBottomPadding = 4.0;
   var textTips = new TextStyle(fontSize: 16.0 ,color:  Colors.black);
   var hintTips = new TextStyle(fontSize: 15.0, color:  Colors.black26);
   static const LOGO = 'images/loginHead.jpg';
   var _userPassController = new TextEditingController();
   var _userNameController = new TextEditingController();
   
  @override
    Widget build(BuildContext context) {
     
      return Scaffold(
        appBar: new AppBar(
          title:  Text("登陆", style: TextStyle(color:Colors.white) ),
          iconTheme: new IconThemeData(color:Colors.white),
        ),
        body: new Column(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, 10.0),
               child: Image.asset(LOGO),
             ),
             Padding(
               padding: EdgeInsets.fromLTRB(leftRightPadding, 50.0, leftRightPadding, topBottomPadding),
               child: TextField(
                 style: hintTips,
                 controller: _userNameController,
                 decoration: InputDecoration(hintText: "请输入用户名"),
                 obscureText: false,// 把账号密码以*号显示
               ),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(leftRightPadding, 30.0, leftRightPadding, topBottomPadding),
                 child: TextField(
                   style: hintTips,
                   controller: _userPassController,
                   decoration: InputDecoration(hintText: "请输入用户密码"),

                 ),
                 ),

                 Container(
                   width: 360.0,
                   margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
                   padding: EdgeInsets.fromLTRB(leftRightPadding,topBottomPadding,leftRightPadding,topBottomPadding),
                   child: Card(
                     color: Colors.green,
                     elevation: 6.0,
                     child: FlatButton(
                      onPressed: (){
                        print("this pass is " + _userNameController.text);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("马上登陆",
                        style:TextStyle(color:Colors.white,fontSize:16)),
                      ),
                     ),
                   ),
                 ),
           ],
        ),
      );
    }
}