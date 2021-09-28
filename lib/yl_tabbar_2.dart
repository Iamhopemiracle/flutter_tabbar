import 'package:flutter/material.dart';
import 'package:flutter_tabbar/sub_home.dart';
import 'package:flutter_tabbar/sub_image.dart';
import 'package:flutter_tabbar/sub_me.dart';

class SecondTabbarPage extends StatefulWidget {
  @override
  SecondTabbarPageState createState() => new SecondTabbarPageState();
}

class SecondTabbarPageState extends State<SecondTabbarPage> {
  @override
  final List<Widget> page_children = [
    HomePage(),
    ImagePage(),
    MePage(),
  ];

  ///页面
  final List<String> page_title = ['首页', '图片', '我的'];

  ///标题
  int _currentIndex = 0;

  ///当前选中的页面
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(page_title[_currentIndex]),

        ///导航栏标题
        centerTitle: true,

        ///导航栏标题居中显示（IOS默认居中，Android默认靠左）
      ),
      body: page_children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onChangePage,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: page_title[_currentIndex],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: page_title[_currentIndex],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: page_title[_currentIndex],
          ),
        ],
      ),
    );
  }

  void onChangePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
