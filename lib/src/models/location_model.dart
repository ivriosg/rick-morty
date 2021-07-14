class Locations {
  List<Results>? results;

  Locations({
    this.results,
  });

  factory Locations.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;
    List<Results> results = list.map((i) => Results.fromJson(i)).toList();

    return Locations(results: results);
  }
}

class Results {
  int? id;
  String? name;
  String? type;
  String? dimension;

  Results({
    this.id,
    this.name,
    this.type,
    this.dimension,
  });

  factory Results.fromJson(Map<String, dynamic> parsedJson) {
    return Results(
      id: parsedJson['id'],
      name: parsedJson['name'],
      type: parsedJson['type'],
      dimension: parsedJson['dimension'],
    );
  }
}
