class Shape {
  String shapeName;
  Property property;
  Shape({this.shapeName, this.property});

  factory Shape.fromJson(Map<String, dynamic> json) {
    return Shape(
        shapeName: json['shape_name'],
        property: Property.fromJson(json['property']));
  }
}

class Property {
  double width;
  double breadth;

  Property({this.width, this.breadth});

  factory Property.fromJson(Map<String, dynamic> parsedJson) {
    return Property(width: parsedJson['width'], breadth: parsedJson['breadth']);
  }
}
