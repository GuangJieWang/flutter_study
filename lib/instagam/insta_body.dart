import 'package:flutter/material.dart';
import 'insta_list.dart';
/**
 * 创建作者: 王广杰
 * 创建日期: 2018/9/15 10:29
 * 类功能说明:
 */
class InstaBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: InstaList())
      ],
    );
  }
}