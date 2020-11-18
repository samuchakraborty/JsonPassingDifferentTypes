class Photo {
  int id;
  int albumId;
  String url;
  Photo({this.id, this.albumId, this.url});

  factory Photo.fromJson(Map<String, dynamic> parsedJson) {
    return Photo(
        id: parsedJson['id'],
        albumId: parsedJson['albumId'],
        url: parsedJson['url']);
  }
}

class PhotoList {
  List<Photo> photos;
  PhotoList({this.photos});

  factory PhotoList.fromJson(List<dynamic> jsonParsed) {
     List<Photo> photoss = new List<Photo>();
     photoss = jsonParsed.map((i) => Photo.fromJson(i)).toList();





    return PhotoList(photos: photoss);
  }
}
