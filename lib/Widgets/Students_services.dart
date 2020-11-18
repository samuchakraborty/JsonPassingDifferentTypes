import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:jsonComplex/Model/student_model.dart';

Future<String> _loadStudentAssets() async {
  return await rootBundle.loadString("assets/student.json");
}

Future loadStudent() async {
  String jsonString = await _loadStudentAssets();
 final jsonResponse = json.decode(jsonString);
  Student student = new Student.fromJson(jsonResponse);
  print(student.studentName);
  print(student.studentScore);
  print(student.studentId);
}
