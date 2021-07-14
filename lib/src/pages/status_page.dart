import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rick_morty/src/providers/status_provider.dart';
import 'package:rick_morty/src/widgets/list_status.dart';

class StatusPage extends StatelessWidget {
  final statusProvider = new StatusProvider();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      width: size.width * 1.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _alive(context),
            _dead(),
            _unknown(),
          ],
        ),
      ),
    );
  }

  _alive(context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      // height: MediaQuery.of(context).size.height * 1.0,
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Text(
            'Alive',
            style: TextStyle(
              fontFamily: 'CustomFont',
              fontSize: 50.0,
              color: Color(0xFFAEE6E3),
            ),
          ),
          SizedBox(height: 10.0),
          FutureBuilder(
            future: statusProvider.getAlive(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListStatus(datos: snapshot.data);
              } else {
                return Container(
                  child: Text('Loading data...'),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  _dead() {
    return Column(
      children: [Text('Muertos')],
    );
  }

  _unknown() {
    return Column(
      children: [Text('Desconocido')],
    );
  }
}
