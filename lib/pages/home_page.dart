import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Created by xu_zhen on 2021/5/20 23:02
// des: 首页

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("hello world"), Text("xu_zhen")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("hello world"), Text("xu_zhen")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("hello world"), Text("xu_zhen")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                "hello world",
                style: TextStyle(fontSize: 30.0),
              ),
              Text("xu_zhen")
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                  flex: 3, child: Container(height: 30, color: Colors.red)),
              Expanded(
                  flex: 1, child: Container(height: 30, color: Colors.green))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 100,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 30.0,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 30.0,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
          ),
          Row(
            children: [Text("xxxx" * 10)],
          ),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            alignment: WrapAlignment.end,
            children: [
              Chip(
                label: Text("xuzhen"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("X"),
                ),
              ),
              Chip(
                label: Text("xuzhen"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("X"),
                ),
              ),
              Chip(
                label: Text("xuzhen" , style: TextStyle(fontWeight: FontWeight.bold),),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("X"),
                ),
              ),
              Chip(
                label: Text("xuzhen"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("X"),
                ),
              ),
              Chip(
                label: Text("xuzhen"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("X"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
