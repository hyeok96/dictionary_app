class DefinitionModel {
  String definition;
  List<String>? synonyms;
  List<String>? antonyms;
  String? example;

  DefinitionModel({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    required this.example,
  });

  factory DefinitionModel.fromMap(Map<String, dynamic> map) {
    return DefinitionModel(
        definition: map["definition"],
        synonyms: map["synonyms"] != null
            ? List<String>.from(map["synonyms"]).toList()
            : null,
        antonyms: map["antonyms"] != null
            ? List<String>.from(map["antonyms"]).toList()
            : null,
        example: map["example"]);
  }
}
