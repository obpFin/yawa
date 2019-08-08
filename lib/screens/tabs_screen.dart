import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/today_screen.dart';
import '../screens/week_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  final List<Map<String, Object>> _pages = [
    {'page': TodayScreen(), 'title': 'Today'},
    {'page': WeekScreen(), 'title': 'Week'},
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget _buildAppBar() {
    return Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(
              'Helsinki',
            ),
          )
        : AppBar(
            title: Text(
              'Helsinki',
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = _buildAppBar();

    return Platform.isIOS
        ? CupertinoPageScaffold(
            navigationBar: appBar,
            child: _pages[_selectedPageIndex]['page'],
          )
        : Scaffold(
            appBar: appBar,
            body: _pages[_selectedPageIndex]['page'],
            bottomNavigationBar: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.black45,
              selectedItemColor: Colors.white,
              currentIndex: _selectedPageIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  title: Text('Today'),
                  icon: Icon(Icons.today),
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  title: Text('Week'),
                  icon: Icon(Icons.next_week),
                ),
              ],
            ),
          );
  }
}
