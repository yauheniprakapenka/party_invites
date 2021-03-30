import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';

class NetworkManager {
  Dio _dio = Dio();

  NetworkManager() {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.findProxy = (uri) {
        return "PROXY 192.168.100.3:9090";
      };
    };
  }

  Future<String> fetchUsers() async {
    Response response = await _dio.get("https://gorest.co.in/public-api/users");
    if (response.statusCode == 200) {
      return response.toString();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
