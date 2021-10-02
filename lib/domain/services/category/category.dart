import 'package:flutter_new_project/domain/core/constants/assets.dart';
import 'package:flutter_new_project/domain/models/category.dart';
import 'package:flutter_new_project/domain/services/json/json.dart';

class CategoryService {
  static Future<CategoryModel> getCategory() async {
    const assetPath = Assets.category;
    final decodedLocalData = await JsonService.decodeLocalJson(assetPath);
    return CategoryModel.fromJson(decodedLocalData);
  }
}
