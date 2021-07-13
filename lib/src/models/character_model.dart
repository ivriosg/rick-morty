class Characters {
  List<Results>? results;

  Characters({
    this.results,
  });

  factory Characters.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;
    List<Results> results = list.map((i) => Results.fromJson(i)).toList();

    return Characters(results: results);
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? image;
  String? url;

  Results({
    this.id,
    this.name,
    this.status,
    this.species,
    this.gender,
    this.image,
  });

  factory Results.fromJson(Map<String, dynamic> parsedJson) {
    return Results(
      id: parsedJson['id'],
      name: parsedJson['name'],
      status: parsedJson['status'],
      species: parsedJson['species'],
      gender: parsedJson['gender'],
      image: parsedJson['image'],
    );
  }
}
