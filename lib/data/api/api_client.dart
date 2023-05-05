import 'package:examina/common/utils/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient extends GetConnect implements GetxService {
  String appBaseUrl;
  late Map<String, String> _mainHeaders;
  String token = "";
  final SharedPreferences sharedPreferences;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;

    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<void> updateToken() async {
    token = await getUserToken();
    updateMainHeader(token);
  }

  updateMainHeader(token) {
    _mainHeaders['Authorization'] = 'Bearer $token';
  }

  Future<String> getUserToken() async {
    return await sharedPreferences.getString(AppConstants.TOKEN)!;
  }

  Future<bool> saveToken(String token) async {
    // use sharePreferences
    try {
      await sharedPreferences.setString(AppConstants.TOKEN, token);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<Response> postData(url, body) async {
    Response response = await post(url, body, headers: _mainHeaders);
    return response;
  }

  Future<Response> putData(
    url,
    body,
  ) async {
    Response response = await put(url, body, headers: _mainHeaders);
    return response;
  }

  Future<Response> getData(url) async {
    Response response = await get(url, headers: _mainHeaders);
    return response;
  }
}
