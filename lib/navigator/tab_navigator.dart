import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/my_page.dart';
import 'package:first_flutter_app/pages/search_page.dart';
import 'package:first_flutter_app/pages/trip_page.dart';
import 'package:flutter/material.dart';

/// Created by xu_zhen on 2021/5/20 22:58
/// des: 底部导航

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);
  final _default = Colors.grey;
  final _active = Colors.blue;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [HomePage(), SearchPage(), TripPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _default,
              ),
              activeIcon: Icon(
                Icons.home,
                color: _active,
              ),
              title: Text(
                '首页',
                style:
                    TextStyle(color: _currentIndex != 0 ? _default : _active),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _default,
              ),
              activeIcon: Icon(
                Icons.search,
                color: _active,
              ),
              title: Text(
                '搜索',
                style:
                    TextStyle(color: _currentIndex != 1 ? _default : _active),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: _default,
              ),
              activeIcon: Icon(
                Icons.camera_alt,
                color: _active,
              ),
              title: Text(
                '旅行',
                style:
                    TextStyle(color: _currentIndex != 2 ? _default : _active),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _default,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _active,
              ),
              title: Text(
                '我的',
                style:
                    TextStyle(color: _currentIndex != 3 ? _default : _active),
              ))
        ],
      ),
    );
  }
}
