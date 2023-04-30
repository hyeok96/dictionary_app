class LicenseModel {
  String name;
  String url;

  LicenseModel({required this.name, required this.url});

  factory LicenseModel.fromMap(Map<String, dynamic> map) {
    return LicenseModel(
      name: map["name"],
      url: map["url"],
    );
  }
}
