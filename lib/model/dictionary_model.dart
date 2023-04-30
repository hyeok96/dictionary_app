import 'package:dictionary_app/model/license_model.dart';
import 'package:dictionary_app/model/meaning_model.dart';
import 'package:dictionary_app/model/phonetic_model.dart';

class DictionaryModel {
  String word;
  String? phonetic;
  List<PhoneticModel> phonetics;
  List<MeaningModel> meanings;
  LicenseModel license;
  List<String> sourceUrls;

  DictionaryModel(
      {required this.word,
      required this.phonetic,
      required this.phonetics,
      required this.meanings,
      required this.license,
      required this.sourceUrls});

  factory DictionaryModel.fromMap(Map<String, dynamic> map) {
    return DictionaryModel(
      word: map["word"],
      phonetic: map["phonetic"],
      phonetics: List<PhoneticModel>.from(
        map["phonetics"].map(
          (e) => PhoneticModel.fromMap(e),
        ),
      ),
      meanings: List<MeaningModel>.from(
        map["meanings"].map(
          (e) => MeaningModel.fromMap(e),
        ),
      ),
      license: LicenseModel.fromMap(map["license"]),
      sourceUrls: List<String>.from(
        map["sourceUrls"],
      ),
    );
  }
}
