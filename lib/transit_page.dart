// Created by xu_zhen on 2021/5/23 15:00
// des: 启动页
import 'dart:async';

import 'package:flutter/material.dart';

import 'navigator/tab_navigator.dart';

class TransitPage extends StatefulWidget {
  const TransitPage({Key key}) : super(key: key);

  @override
  _TransitPageState createState() => _TransitPageState();
}

class _TransitPageState extends State<TransitPage> {
  int _currentMin = 6;


  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentMin--;
      });
      if (_currentMin <= 0) {
        _jumpTabNavigator();
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/page.webp',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            right: 10,
            child: InkWell(
              child: _clipButton(),
              onTap: _jumpTabNavigator,
            ),
          )
        ],
      ),
    );
  }

  //跳过按钮
  Widget _clipButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.black.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('跳过', style: TextStyle(color: Colors.white, fontSize: 12)),
            Text('${_currentMin}s',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  void _jumpTabNavigator() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => TabNavigator()),
            (route) => false);
  }

}
