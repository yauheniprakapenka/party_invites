import 'package:flutter_new_project/domain/core/constants/assets.dart';
import 'package:flutter_new_project/domain/models/scientist.dart';
import 'package:flutter_new_project/domain/services/json/json.dart';

class ScientistService {
  static Future<ScientistModel> getScientist() async {
    const assetPath = Assets.scientist;
    final decodedLocalData = await JsonService.decodeLocalJson(assetPath);
    return ScientistModel.fromJson(decodedLocalData);
  }
}
