class Status {
  List<Results>? results;

  Status({
    this.results,
  });

  factory Status.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;
    List<Results> results = list.map((i) => Results.fromJson(i)).toList();

    return Status(results: results);
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? image;

  Results({
    this.id,
    this.name,
    this.status,
    this.species,
    this.image,
  });

  factory Results.fromJson(Map<String, dynamic> parsedJson) {
    return Results(
      id: parsedJson['id'],
      name: parsedJson['name'],
      status: parsedJson['status'],
      species: parsedJson['species'],
      image: parsedJson['image'],
    );
  }
}
