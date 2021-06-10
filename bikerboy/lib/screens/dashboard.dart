import 'package:bikerboy/screens/home.dart';
import 'package:bikerboy/screens/info.dart';
import 'package:bikerboy/screens/list.dart';
import 'package:bikerboy/screens/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    ListOrder(),
    Profile(),
    Info(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xff0048AA),
        unselectedItemColor: Colors.grey[500],
        iconSize: 35.0,
        // backgroundColor: Color(0xFF21283A), //Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 1, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.list,
            ),
            title: Text('Income'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Me'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Me'),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
