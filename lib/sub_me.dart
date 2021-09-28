import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉右上角DEBUG标签
      home: Center(
        child: Text('我的'),
      ),
    );
  }
}