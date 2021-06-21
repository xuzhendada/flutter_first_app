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
                    title: Text("这是个标题",style: TextStyle(fontWeight: FontWeight.bold),),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [Text("内容1"), Text("内容2")],
                      ),
                    ),
                    actions: [
                      MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "确定",
                            style: TextStyle(
                              color: Colors.blueAccent
                            ),
                          )),
                      MaterialButton(onPressed: () {
                        print("点击了取消");
                      }, child: Text("取消",style: TextStyle(color: Colors.blueAccent),))
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
