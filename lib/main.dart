import 'package:flutter/material.dart';

import 'package:rick_morty/src/pages/home_page.dart';
import 'package:rick_morty/src/pages/location_page.dart';
import 'package:rick_morty/src/pages/status_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick & Morty',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'location': (BuildContext context) => LocationPage(),
        'status': (BuildContext context) => StatusPage(),
      },
    );
  }
}
