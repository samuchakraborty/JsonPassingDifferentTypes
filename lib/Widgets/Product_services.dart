import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:jsonComplex/Model/Product_model.dart';

Future<String> _loadProductAssets() async {
  return await rootBundle.loadString("assets/product.json");
}

Future loadProduct() async {
  String jsonString = await _loadProductAssets();
  final jsonResponse = json.decode(jsonString);
  Product product = new Product.fromJson(jsonResponse);
  print(product.images[0].imageId);
  print(product.images[0].imageName);
  print(product.images);
}
