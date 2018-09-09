import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_study/WhatsAppHome.dart';
import 'package:battery/battery.dart';
import 'package:flutter_study/BatteryHomePage.dart';

Future<Null> main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Whats App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
//      home: new WhatsAppHome(),
    home: new BatteryHomePage(title: 'Flutter demo home page'),
    );
  }
}
