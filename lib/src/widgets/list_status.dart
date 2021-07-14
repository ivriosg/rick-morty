import 'package:flutter/material.dart';
import 'package:rick_morty/src/models/status_model.dart';

class ListStatus extends StatelessWidget {
  final List<Results> datos;
  ListStatus({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.0,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          crossAxisCount: 2,
          childAspectRatio: 0.65,
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
          SizedBox(height: 10.0),
          _image(context, dato),
          SizedBox(height: 10.0),
          _type(context, dato),
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
      ],
    );
  }

  _image(BuildContext context, Results dato) {
    return Container(
      child: Image.network('${dato.image}'),
    );
  }

  _type(BuildContext context, Results dato) {
    return Column(
      children: [
        Text(
          '${dato.species}'.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
            fontSize: 17.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
