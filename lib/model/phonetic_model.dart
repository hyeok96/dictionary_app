import 'license_model.dart';

class PhoneticModel {
  String text;
  String audio;
  String sourceUrl;
  LicenseModel license;

  PhoneticModel(
      {required this.text,
      required this.audio,
      required this.sourceUrl,
      required this.license});

  factory PhoneticModel.fromMap(Map<String, dynamic> map) {
    return PhoneticModel(
        text: map["text"],
        audio: map["audio"],
        sourceUrl: map["sourceUrl"],
        license: LicenseModel.fromMap(map["license"]));
  }
}
