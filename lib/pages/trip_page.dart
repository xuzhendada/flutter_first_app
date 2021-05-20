import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Created by xu_zhen on 2021/5/20 23:02
/// des: 首页

class TripPage extends StatefulWidget {
  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('旅行'),
      ),
    );
  }
}
