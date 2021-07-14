import 'package:flutter/material.dart';

import 'package:rick_morty/src/providers/character_provider.dart';
import 'package:rick_morty/src/widgets/character_data.dart';

class FrontPage extends StatelessWidget {
  final characterProvider = new CharacterProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(15.0),
        child: _getCharacter(),
      ),
    );
  }

  _getCharacter() {
    return FutureBuilder(
      future: characterProvider.getCharacters(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return CharacterData(datos: snapshot.data);
        } else {
          return Container(
            child: Text('Loading data...'),
          );
        }
      },
    );
  }
}
