import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:rick_morty/src/models/character_model.dart';

class CharacterProvider {
  String _url = 'rickandmortyapi.com';

  Future _procesarRespuesta(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final characters = new Characters.fromJson(decodedData);
    return characters.results;
  }

  // Get all characters
  Future<List<Results>> getCharacters() async {
    final url = Uri.https(_url, 'api/character');
    return await _procesarRespuesta(url);
  }
}
