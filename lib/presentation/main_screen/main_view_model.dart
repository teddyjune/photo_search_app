import 'package:flutter/material.dart';
import 'package:photo_search_app/data/data_source/pixabay_api.dart';
import 'package:photo_search_app/data/model/photo.dart';
import 'package:photo_search_app/data/repository/photo_repository.dart';

class MainViewModel extends ChangeNotifier {
  List<Photo> photos = [];
  final _repository = PhotoRepository(PixabayApi());

  void fetchPhotos(String query) async {
    final photos = await _repository.getPhotos(query);
    notifyListeners();
  }
}
