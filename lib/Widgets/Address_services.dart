import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:jsonComplex/Model/address_model.dart';

Future<String> _loadAddressAssets() async {
  return await rootBundle.loadString("assets/address.json");
}

Future loadAddress() async {
  String jsonString = await _loadAddressAssets();
  final jsonResponse = json.decode(jsonString);
  Address address = new Address.fromJson(jsonResponse);
  print(address.city);
  print(address.streets[0]);
}
