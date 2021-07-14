import 'package:flutter/material.dart';

import 'package:rick_morty/src/widgets/list_locations.dart';
import 'package:rick_morty/src/providers/location_provider.dart';

class LocationPage extends StatelessWidget {
  final locationProvider = new LocationProvider();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: locationProvider.getLocations(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListLocations(datos: snapshot.data);
        } else {
          return Container(
            child: Text('Loading data...'),
          );
        }
      },
    );
  }
}
