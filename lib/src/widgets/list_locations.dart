import 'package:flutter/material.dart';
import 'package:rick_morty/src/models/location_model.dart';

class ListLocations extends StatelessWidget {
  final List<Results> datos;
  ListLocations({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(15.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          crossAxisCount: 2,
        ),
        physics: ScrollPhysics(),
        itemCount: datos.length,
        itemBuilder: (context, i) => _createList(context, datos[i]),
      ),
    );
  }

  _createList(BuildContext context, Results dato) {
    final singleLocation = Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Color(0xFFBBE0F2),
        borderRadius: BorderRadiusDirectional.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _name(context, dato),
          _type(context, dato),
          _dimension(context, dato),
        ],
      ),
    );

    return GestureDetector(
      child: singleLocation,
      onTap: () {},
    );
  }

  _name(BuildContext context, Results dato) {
    return Column(
      children: [
        // Image.asset('assets/logotipo.png'),
        Text(
          '${dato.name}',
          style: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 22.0,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  _type(BuildContext context, Results dato) {
    return Column(
      children: [
        Text('${dato.type}'),
      ],
    );
  }

  _dimension(BuildContext context, Results dato) {
    return Column(
      children: [
        Text('${dato.dimension}'),
      ],
    );
  }
}
