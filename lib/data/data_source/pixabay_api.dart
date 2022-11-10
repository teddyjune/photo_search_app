import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:photo_search_app/data/data_source/photo_dto.dart';

class PixabayApi {
  static const baseUrl = 'https://pixabay.com';
  static const apiKey = '10711147-dc41758b93b263957026bdadb';

  Future<PhotoDto> getPhotos(String query) async {
    final response = await http
        .get(Uri.parse('$baseUrl/api/?key=$apiKey&q=$query&image_type=photo'));
    Map<String, dynamic> json = jsonDecode(response.body);
    return PhotoDto.fromJson(json);
  }
}
