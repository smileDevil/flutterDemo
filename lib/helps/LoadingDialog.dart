import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingDialog extends Dialog{
  String text;
  //重构
  LoadingDialog({Key key,@required this.text}):super(key:key);

  @override
    Widget build(BuildContext context) {
     
      return Material( //创建透明层
        type: MaterialType.transparency,//透明类型
        child: Center(
          child: SizedBox(
            width: 200,
            height: 180,
            child: Container(
              decoration: ShapeDecoration(
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ), // 形状
              ),

              child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   CircularProgressIndicator(),// 循环进度条. 属性strokeWidth , backgroundColor  valueCOlor value如果非null 值在0.0至1.0
                   Padding(
                     padding: EdgeInsets.only(top: 20),
                     child: Text(text,style:TextStyle(fontSize:20)),
                   ),
                 ],
              ),
             
            ),
          ),
        ),

      );
    }
}

