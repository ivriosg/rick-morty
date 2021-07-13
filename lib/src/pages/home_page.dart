import 'package:flutter/material.dart';
import 'package:rick_morty/src/pages/front_page.dart';

import 'package:rick_morty/src/pages/location_page.dart';
import 'package:rick_morty/src/pages/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pageBottomBar = [
    FrontPage(),
    LocationPage(),
    StatusPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logotipo.png',
          width: 160.0,
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
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
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
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
