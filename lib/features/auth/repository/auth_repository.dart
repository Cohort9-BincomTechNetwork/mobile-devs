import 'package:examina/common/utils/constants.dart';
import 'package:examina/data/api/api_client.dart';
import 'package:get/get.dart';

class AuthRepository {
  ApiClient apiClient;
  AuthRepository({required this.apiClient});

  Future<Response> signUp(body) async {
    Response response = await apiClient.postData(AppConstants.SIGN_UP, body);
    return response;
  }

  Future<Response> signIn(body) async {
    Response response = await apiClient.postData(AppConstants.LOGIN, body);
    return response;
  }
}
