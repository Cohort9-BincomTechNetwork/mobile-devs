import 'package:examina/common/utils/constants.dart';
import 'package:examina/data/api/api_client.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepository({required this.apiClient, required this.sharedPreferences});

  Future<Response> selectRole(body) async {
    return apiClient.putData(AppConstants.SELECT_ROLE, body);
  }

  updateToken() async {
    return await apiClient.updateToken();
  }

  Future<String> getUserToken() async {
    return await apiClient.getUserToken();
  }

  Future<bool> saveToken(String token) async {
    // use sharePreferences
    return await apiClient.saveToken(token);
  }

  Future<Response> resendCode(body) async {
    return await apiClient.postData(AppConstants.RESEND_CODE, body);
  }

  Future<Response> verifyCode(body) async {
    print('This is ' + AppConstants.TOKEN);
    Response response = await apiClient.putData(AppConstants.VERIFY_CODE, body);
    return response;
  }

  signUp(body) async {
    var response = await apiClient.postData(AppConstants.SIGN_UP, body);
    return response;
  }

  Future<Response> signIn(body) async {
    Response response = await apiClient.postData(AppConstants.LOGIN, body);
    return response;
  }
}
