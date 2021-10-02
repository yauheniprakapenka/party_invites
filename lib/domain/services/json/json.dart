import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class JsonService {
  static Future<dynamic> decodeLocalJson(String assetPath) async {
    final asset = await rootBundle.loadString(assetPath);
    return await jsonDecode(asset);
  }
}
