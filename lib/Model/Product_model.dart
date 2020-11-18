class Product {
  int productId;
  String productName;
  List<Image> images;

  Product({this.productId, this.productName, this.images});
  factory Product.fromJson(Map<String, dynamic> jsonParsed) {
    var list = jsonParsed['images'] as List;
    print(list.runtimeType);

    List<Image> imageList = list.map((e) => Image.fromJson(e)).toList();

    return Product(
        productId: jsonParsed['id'],
        productName: jsonParsed['name'],
        //  images: Image.fromJson(jsonParsed['images'])
        images: imageList);
  }
}

class Image {
  int imageId;
  String imageName;

  Image({this.imageId, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(imageId: parsedJson['id'], imageName: parsedJson['imageName']);
  }
}
