import 'package:flutter_new_project/domain/core/constants/assets.dart';
import 'package:flutter_new_project/domain/models/shape.dart';
import 'package:flutter_new_project/domain/services/json/json.dart';

class ShapeService {
  static Future<ShapeModel> getShape() async {
    const assetPath = Assets.shape;
    final decodedLocalData = await JsonService.decodeLocalJson(assetPath);
    return ShapeModel.fromJson(decodedLocalData);
  }
}