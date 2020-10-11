import 'package:flutter/material.dart';
import '../pages/pageList.dart';

class YNavigatorPage extends StatefulWidget {
  YNavigatorPage({Key key}) : super(key: key);

  @override
  _YNavigatorPageState createState() => _YNavigatorPageState();
}

class _YNavigatorPageState extends State<YNavigatorPage> {
  int _currentIndex = 0;
  List<Widget> pageList = List();
  Function changeIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageList..add(HomePage())..add(UserPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _currentIndex, children: pageList, sizing: StackFit.expand),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
