import 'package:photo_search_app/data/data_source/Photo_dto.dart';
import 'package:photo_search_app/data/data_source/pixabay_api.dart';
import 'package:photo_search_app/data/model/photo.dart';

class PhotoRepository {
  final PixabayApi _api;

  PhotoRepository(this._api);

  Future<List<Photo>> fetchPhoto(String query) async {
    final photoDto = await _api.fetchPhoto(query);

    if ((photoDto.hits?.length ?? 0) == 0) {
      return [];
    }
    return PhotoDto.hits!
        .map((e) => Photo(
              previewURL: e.previewURL ?? '',
              tags: e.tags ?? '',
            ))
        .toList();
  }
}
