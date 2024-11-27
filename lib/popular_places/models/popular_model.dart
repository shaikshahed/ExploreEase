class popularPlacesModel {
  int? id;
  int? height;
  int? width;
  String? imageUrl;
  String? placeName;
  String? location;
  double? rating;

  popularPlacesModel(
      {this.id,
      this.height,
      this.width,
      this.imageUrl,
      this.placeName,
      this.location,
      this.rating});

  popularPlacesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    height = json['height'];
    width = json['width'];
    imageUrl = json['imageUrl'];
    placeName = json['placeName'];
    location = json['location'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['height'] = this.height;
    data['width'] = this.width;
    data['imageUrl'] = this.imageUrl;
    data['placeName'] = this.placeName;
    data['location'] = this.location;
    data['rating'] = this.rating;
    return data;
  }
}