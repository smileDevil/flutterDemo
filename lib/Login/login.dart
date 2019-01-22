import 'package:flutter/material.dart';
import 'package:flutter_app/helps/LoadingDialog.dart';
class LoginPage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
     
      return new _LoginpageState();
    }
}

class _LoginpageState extends State<LoginPage>{

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
                    obscureText: true,
                    keyboardType: TextInputType.number,
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
                        _lginAction("1","2",context);
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

 _lginAction(String username , String password,BuildContext context){
   if(username.length <=0){

   }                          

   showDialog<Null>(
    context: context, //BuildContext对象
    barrierDismissible: false,
    builder: (BuildContext context) {
        return new LoadingDialog( //调用对话框
            text: '正在获取详情...',
        );
    });

    Future.delayed(const Duration(seconds: 2),()=>Navigator.pop(context)) ;
}