import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Created by xu_zhen on 2021/5/20 23:02
// des: 首页

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("点击弹窗"),
          textColor: Colors.white,
          color: Colors.grey,
          splashColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("这是个标题"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [Text("内容1"), Text("内容2")],
                      ),
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("确定")),
                      FlatButton(onPressed: () {}, child: Text("取消"))
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
