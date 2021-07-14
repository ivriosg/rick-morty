import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_morty/src/models/status_model.dart';

class StatusProvider {
  String _url = 'rickandmortyapi.com';

  Future _response(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final status = new Status.fromJson(decodedData);
    return status.results;
  }

  // Get alive characters
  Future<List<Results>> getAlive() async {
    final url = Uri.https(_url, 'api/character', {
      'status': 'alive',
    });

    return await _response(url);
  }
}
