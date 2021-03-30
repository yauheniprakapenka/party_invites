import 'dart:developer';

import 'package:flutter_parse_json/network/network_manager.dart';

class ApiProvider {
  final NetworkManager _networkManager = NetworkManager();

  Future<String> fetchUsers() async {
    return await _networkManager.fetchUsers();
  }
}

ApiProvider apiProvider = ApiProvider();
