import 'package:flutter_new_project/domain/core/constants/assets.dart';
import 'package:flutter_new_project/domain/models/address.dart';
import 'package:flutter_new_project/domain/services/json/json.dart';

class AddressService {
  static Future<AddressModel> getAdress() async {
    const assetPath = Assets.address;
    final decodedLocalData = await JsonService.decodeLocalJson(assetPath);
    return AddressModel.fromJson(decodedLocalData);
  }
}
