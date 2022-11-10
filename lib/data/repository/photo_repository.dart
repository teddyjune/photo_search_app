import 'package:photo_search_app/data/data_source/pixabay_api.dart';
import 'package:photo_search_app/data/model/photo.dart';

class PhotoRepository {
  final PixabayApi _api;

  PhotoRepository(this._api);

  Future<List<Photo>> getPhotos(String query) async {
    final photoDto = await _api.getPhotos(query);

    if (photoDto.hits == null) {
      return [];
    }
    return photoDto.hits!
        .map((e) => Photo(
              previewURL: e.previewURL ?? '',
              tags: e.tags ?? '',
            ))
        .toList();
  }
}
