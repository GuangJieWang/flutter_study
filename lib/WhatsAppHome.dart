import 'package:flutter/material.dart';
import 'package:flutter_study/pages/CallsScreen.dart';
import 'package:flutter_study/pages/ChatScreen.dart';
import 'package:flutter_study/pages/StatusScreen.dart';
/*
 * 创建作者: 王广杰
 * 创建日期: 2018/9/8 12:10
 * 类功能说明:
 * */

class WhatsAppHome extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(initialIndex: 1, vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whats App"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
            text: "CHATS"
            ),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            )
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(controller: _tabController, children: <Widget>[
        new ChatScreen(),
        new StatusScreen(),
        new CallsScreen(),
      ]),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme
            .of(context)
            .accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
