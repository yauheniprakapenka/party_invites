import 'package:flutter_new_project/domain/core/constants/assets.dart';
import 'package:flutter_new_project/domain/models/album.dart';
import 'package:flutter_new_project/domain/services/json/json.dart';

class AlbumService {
  static Future<AlbumListModel> getAlbums() async {
    const assetPath = Assets.albums;
    final decodedLocalData = await JsonService.decodeLocalJson(assetPath);
    return AlbumListModel.fromJson(decodedLocalData);
  }
}
