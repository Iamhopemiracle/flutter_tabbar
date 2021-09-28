import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,//去掉右上角DEBUG标签

      title: 'Testing',
      home: new Scaffold(
        //这里设置
        backgroundColor: Colors.amber,
      ),
    );
  }
}