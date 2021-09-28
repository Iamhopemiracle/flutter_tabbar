import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabbar/sub_home.dart';
import 'package:flutter_tabbar/sub_image.dart';
import 'package:flutter_tabbar/sub_me.dart';

class ThirdTabbarPage extends StatefulWidget {
  @override
  ThirdTabbarPageState createState() => new ThirdTabbarPageState();
}

class ThirdTabbarPageState extends State<ThirdTabbarPage> {
  @override
  final List<Widget> page_children = [
    HomePage(),
    ImagePage(),
    MePage(),
    ImagePage(),
    MePage(),
  ];

  ///页面
  final List<String> page_title = ['首页', '图片', '我的', '图片', '我的'];

  ///标题
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  ///当前选中的页面
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Scaffold(
        appBar: AppBar(
          title: Text(page_title[_currentIndex]),

          ///导航栏标题
          centerTitle: true,

          ///导航栏标题居中显示（IOS默认居中，Android默认靠左）
        ),
        body: page_children[_currentIndex],

        floatingActionButton: FloatingActionButton(
          foregroundColor: Colors.white,
          // elevation: 10.0,///阴影
          onPressed: () {

          },
          child: new Icon(Icons.add),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked, //放在中间

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          ///中间悬浮按钮嵌入BottomAppBar
          notchMargin: 10,///缺口边距
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildBottomBarItem(_currentIndex, 0, Icons.home, '首页'),
              buildBottomBarItem(_currentIndex, 1, Icons.image, '图片'),
              buildBottomBarItem(_currentIndex, -1, Icons.person, '我的'),
              buildBottomBarItem(_currentIndex, 2, Icons.home, '首页'),
              buildBottomBarItem(_currentIndex, 3, Icons.image, '图片'),
            ],
          ),
        ),

        )
    );
  }

  buildBottomBarItem(
      int selectedIndex, int index, IconData iconData, String title) {
    ///未选中
    TextStyle textStyle = TextStyle(fontSize: 11.0, color: Colors.grey);
    MaterialColor iconColor = Colors.grey;
    double iconSize = 20;
    EdgeInsetsGeometry padding = EdgeInsets.only(top: 8.0);

    //判断是否是选中
    if (selectedIndex == index) {
      textStyle = TextStyle(fontSize: 13.0, color: Colors.blue);
      iconColor = Colors.blue;
      iconSize = 25;
      padding = EdgeInsets.only(top: 6.0);
    }

    Widget paddingItem = SizedBox();
    if (iconData != null) {
      paddingItem = Padding(
        padding: padding,
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                Icon(
                  iconData,
                  color: iconColor,
                  size: iconSize,
                ),
                Text(
                  title,
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget item = Expanded(
        flex: 0,
        child: new GestureDetector(
          onTap: () {
            if(index != _currentIndex && index >= 0) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          child: SizedBox(
            height: 52,
            child: paddingItem,
          ),
        )
    );
    return item;
  }
}
