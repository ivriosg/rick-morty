import 'package:flutter/material.dart';

import 'package:rick_morty/src/pages/home_page.dart';
import 'package:rick_morty/src/pages/location_page.dart';
import 'package:rick_morty/src/pages/status_page.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int _selectedIndex = 0;
  final List<Widget> _pageBottomBar = [
    HomePage(),
    LocationPage(),
    StatusPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick & Morty"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Search User',
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageBottomBar,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          _bottomItem(Icons.home_filled, 'Home'),
          _bottomItem(Icons.gps_fixed, 'Location'),
          _bottomItem(Icons.inventory, 'Status'),
        ],
      ),
    );
  }

  _bottomItem(IconData icon, String title) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: title,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
