import 'package:flutter/material.dart';
import 'package:photo_search_app/data/model/photo.dart';
import 'package:photo_search_app/data/repository/photo_repository.dart';

class MainViewModel extends ChangeNotifier {
  List<Photo> photos = [];
  final PhotoRepository _repository;

  MainViewModel(this._repository);

  void fetchPhotos(String query) async {
    photos = await _repository.getPhotos(query);
    notifyListeners();
  }
}
