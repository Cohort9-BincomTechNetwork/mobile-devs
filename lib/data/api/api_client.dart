import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  String appBaseUrl;
  String token = '';
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
  }

  Map<String, String> _mainHeaders = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  Future<Response> postData(url, body) async {
    Response response = await post(url, body, headers: _mainHeaders);
    return response;
  }

  Future<Response> putData(url, body) async {
    Response response = await put(url, body, headers: _mainHeaders);
    return response;
  }

  Future<Response> getData(url) async {
    Response response = await get(url, headers: _mainHeaders);
    return response;
  }
}
