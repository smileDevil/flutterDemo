import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingDialog extends Dialog{
  String text;
   
  bool outsideDismiss;
  Function dismissCallback;
  //重构
  LoadingDialog({Key key,this.outsideDismiss = true,this.dismissCallback,@required this.text}):super(key:key);

  @override
    Widget build(BuildContext context) {
     
    //  _dismissDialog(){
    //    if(dismissCallback !=null){
    //      dismissCallback();
    //    }
    //    Navigator.of(context).pop();
    //  }
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

    // showLoadingDialog(){
    //   showDialog(
    //    context: context, //BuildContext对象
    //    barrierDismissible: false,
    //    builder: (context)=> LoadingDialog( //调用对话框
    //         text: '正在获取详情...',
    //     )
    //    );

    //   Future.delayed(const Duration(seconds: 2),()=>Navigator.of(context).pop()) ;
    // }
}

