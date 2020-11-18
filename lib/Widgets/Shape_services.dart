import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:jsonComplex/Model/Shape_Model.dart';

Future<String> _loadShapeAssets() async {
  return await rootBundle.loadString("assets/shape.json");
}

Future loadShape() async {
  String jsonString = await _loadShapeAssets();

  final jsonResponse = json.decode(jsonString);
  Shape shape = new Shape.fromJson(jsonResponse);
  print(shape.shapeName);
  print(shape.property.breadth);
}
