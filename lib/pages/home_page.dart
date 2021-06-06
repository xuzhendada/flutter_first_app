import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Created by xu_zhen on 2021/5/20 23:02
// des: 首页

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switchedSelected = true;
  bool _checkSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            value: _switchedSelected,
            onChanged: (value) {
              setState(() {
                _switchedSelected = value;
              });
            }),
        Checkbox(
            value: _checkSelected,
            onChanged: (value) {
              setState(() {
                _checkSelected = value;
                print(_checkSelected);
              });
            })
      ],
    );
  }
}
