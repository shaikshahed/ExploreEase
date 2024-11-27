import 'dart:convert';

import 'package:exploreease/popular_places/models/popular_model.dart';
import 'package:http/http.dart' as http;

class PopularPlacesRepository{
  String url = "https://mocki.io/v1/bf9064a9-8a1c-4620-a7b5-af9963a00c54";

  PopularPlacesRepository(this.url);
  Future<List<popularPlacesModel>> getAllPopularPlaces() async {
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      List<dynamic> body = json.decode(response.body);
      List<popularPlacesModel> popularPlaces = body.map(
        (dynamic item) => popularPlacesModel.fromJson(item),
      ).toList();
      return popularPlaces;
    } else {
      throw Exception('Failed to load popular places');
    }
  }
}