import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  ApiClient({required this.appBaseUrl}) {
    baseUrl = this.appBaseUrl;
    timeout = Duration(seconds: 60);
  }
  String appBaseUrl;
  String token = '';

  Map<String, String> _mainHeaders = {
    'Content-type': 'application/json; charset=UTF-8',
  };

  Future<Response> postData(url, body) async {
    Response response = await post(url, body, headers: _mainHeaders);
    return response;
  }

  Future<Response> getData(url) async {
    Response response = await get(url, headers: _mainHeaders);
    return response;
  }
}
