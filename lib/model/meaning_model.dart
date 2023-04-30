import 'package:dictionary_app/model/definition_model.dart';

class MeaningModel {
  String partOfSpeech;
  List<DefinitionModel> definitions;
  // List<String>? synonyms;
  // List<String>? antonyms;

  MeaningModel({
    required this.partOfSpeech,
    required this.definitions,
    // required this.synonyms,
    // required this.antonyms,
  });

  factory MeaningModel.fromMap(Map<String, dynamic> map) {
    return MeaningModel(
      partOfSpeech: map["partOfSpeech"],
      definitions: List<DefinitionModel>.from(
        map["definitions"].map(
          (e) => DefinitionModel.fromMap(e),
        ),
      ),
    );
    // synonyms:
    //     map["synonyms"] != null ? List<String>.from(map["synonyms"]) : null,
    // antonyms: map["antonyms"] != null
    //     ? List<String>.from(map["antonyms"])
    //     : null);
  }
}
