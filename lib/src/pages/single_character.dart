import 'package:flutter/material.dart';
// import 'package:rick_morty/src/models/character_model.dart';

class SingleCharacter extends StatefulWidget {
  @override
  _SingleCharacterState createState() => _SingleCharacterState();
}

class _SingleCharacterState extends State<SingleCharacter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rick and Morty',
          style: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 25.0,
            color: Color(0xFFAEE6E3),
          ),
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
      body: Container(
        color: Colors.black,
        width: size.width * 1.0,
        height: size.height * 1.0,
        padding: EdgeInsets.all(15.0),
        child: Text(
          'Datos del single',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
