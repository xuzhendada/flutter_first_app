import 'package:first_flutter_app/navigator/tab_navigator.dart';
import 'package:first_flutter_app/transit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //应用名称
      title: 'Flutter Demo',
      //主题
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //应用首页路由
      home: TransitPage(),
    );
  }
}
