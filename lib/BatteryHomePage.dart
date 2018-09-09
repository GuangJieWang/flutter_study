import 'dart:async';
import 'package:flutter/material.dart';
import 'package:battery/battery.dart';

/*
 * 创建作者: 王广杰
 * 创建日期: 2018/9/9 11:43
 * 类功能说明: 
 **/
class BatteryHomePage extends StatefulWidget {
  final String title;

  BatteryHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _MyHomePage();
}

class _MyHomePage extends State<BatteryHomePage> {
  Battery _battery = new Battery();
  BatteryState _batteryState;
  StreamSubscription<BatteryState> _batteryStateSubscription;

  @override
  void initState() {
    super.initState();
    _batteryStateSubscription =
        _battery.onBatteryStateChanged.listen((BatteryState state) {
      setState(() {
        _batteryState = state;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Plugin example app'),
      ),
      body: new Center(
        child: new Text('$_batteryState'),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.battery_unknown),
          onPressed: () async {
            final int batteryLevel = await _battery.batteryLevel;
            showDialog<Null>(
                context: context,
                builder: (_) => new AlertDialog(
                      content: new Text('Battery:$batteryLevel'),
                      actions: <Widget>[
                        new FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'))
                      ],
                    ));
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_batteryStateSubscription != null) {
      _batteryStateSubscription.cancel();
    }
  }
}
