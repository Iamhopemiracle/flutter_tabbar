import 'package:flutter/material.dart';
import 'package:flutter_tabbar/sub_home.dart';
import 'package:flutter_tabbar/sub_image.dart';
import 'package:flutter_tabbar/sub_me.dart';

class FirstTabbarPage extends StatefulWidget {
  @override
  FirstTabbarPageState createState() => new FirstTabbarPageState();
}

class FirstTabbarPageState extends State<FirstTabbarPage> {
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
      bottomNavigationBar: new BottomAppBar(
        shape: CircularNotchedRectangle(), ///中间悬浮按钮嵌入BottomAppBar
        notchMargin: 10,///缺口边距
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: (){

                }
            ),
            IconButton(

                icon: Icon(Icons.person),
                onPressed: (){

                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        elevation: 10.0,///阴影
        onPressed: (){

        },
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//放在中间
    );
  }
}
