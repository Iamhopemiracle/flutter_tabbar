import 'package:flutter/material.dart';
import 'package:flutter_tabbar/yl_tabbar_1.dart';
import 'package:flutter_tabbar/yl_tabbar_2.dart';
import 'package:flutter_tabbar/yl_tabbar_3.dart';
import 'package:flutter_tabbar/yl_tabbar_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉右上角DEBUG标签
      // home: FirstTabbarPage(),
      // home: SecondTabbarPage(),
      // home: ThirdTabbarPage(),
      home: FourthTabbarPage(),
    );


  }
}

