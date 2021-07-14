import 'package:flutter/material.dart';

import 'package:rick_morty/src/models/character_model.dart';

class CharacterData extends StatelessWidget {
  final List<Results> datos;
  CharacterData({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15.0,
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        physics: ScrollPhysics(),
        itemCount: datos.length,
        itemBuilder: (context, i) => _createCharacter(context, datos[i]),
      ),
    );
  }

  _createCharacter(BuildContext context, Results dato) {
    final singleCharacter = Container(
      child: Column(
        children: [
          Image.network(
            '${dato.image}',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15.0),
          Text(
            '${dato.name}',
            style: TextStyle(
              fontFamily: 'CustomFont',
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    return GestureDetector(
      child: singleCharacter,
      onTap: () {
        Navigator.pushNamed(context, 'single', arguments: dato);
      },
    );
  }
}
