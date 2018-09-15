import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_study/pages/WhatsAppHome.dart';
import 'package:battery/battery.dart';
import 'package:flutter_study/battery/BatteryHomePage.dart';
import 'package:flutter_study/instagam/insta_home.dart';
Future<Null> main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//      title: 'Whats App',
      title: 'Instagram',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black,fontFamily: "Aveny")
        ),
        textTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      debugShowCheckedModeBanner: false,
//      home: new WhatsAppHome(),
//    home: new BatteryHomePage(title: 'Flutter demo home page'),
    home: new InstaHome(),
    );
  }
}
