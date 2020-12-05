import 'package:flutter/material.dart';
import '../utils/hex_color.dart';
import 'radio_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    RadioPage(), 
    Text('Page 2')
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: _bottomNavBar(),
      ),
    );
  }

  _bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: HexColor('#182545'),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: HexColor('#ffffff'),
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      items: [
        _bottomNavItem(Icons.play_arrow, 'Listen'),
        _bottomNavItem(Icons.favorite, 'Favorite'),
      ],
      onTap: onBottomNavTapped,
    );
  }

  _bottomNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: HexColor('#6d7381')),
      activeIcon: Icon(icon, color: HexColor('#ffffff')),
      label: label
    );
  }

  void onBottomNavTapped(int index) {
    if(!mounted) return;
    setState(() {
      _currentIndex = index;
    });
  }
}