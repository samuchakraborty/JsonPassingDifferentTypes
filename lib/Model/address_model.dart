class Address {
  String city;
  List<String> streets;
  Address({this.city, this.streets});
  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFormJson = parsedJson['streets'];
    List<String> streetList = new List<String>.from(streetsFormJson);

    return Address(city: parsedJson['city'], streets: streetList);
  }
}
