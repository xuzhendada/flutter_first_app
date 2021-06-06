import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Created by xu_zhen on 2021/5/20 23:02
// des: 我的

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("登录"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              maxLength: 12,
              autofocus: true,
              onChanged: (account) {},
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              maxLength: 12,
              inputFormatters: [],
              onChanged: (password) {},
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}
