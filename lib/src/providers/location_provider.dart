import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:rick_morty/src/models/location_model.dart';

class LocationProvider {
  String _url = 'rickandmortyapi.com';

  Future _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final characters = new Locations.fromJson(decodedData);
    return characters.results;
  }

  // Get all locations
  Future<List<Results>> getLocations() async {
    final url = Uri.https(_url, 'api/location');
    return await _procesarRespuesta(url);
  }
}
