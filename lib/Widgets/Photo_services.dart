import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:jsonComplex/Model/photo_model.dart';

Future<String> _loadPhotoAssets() async {
  return await rootBundle.loadString("assets/photo.json");
}

Future loadPhoto() async {
  String jsonString = await _loadPhotoAssets();
  final jsonResponse = json.decode(jsonString);

  PhotoList photoList = new PhotoList.fromJson(jsonResponse);
  print(photoList.photos[0].albumId);
  print(photoList.photos[0].url);
}
