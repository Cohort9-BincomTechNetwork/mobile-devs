import 'package:examina/common/utils/constants.dart';
import 'package:get/get.dart';

import '../../../models/response_models.dart';
import '../repository/auth_repository.dart';

class AuthController extends GetxController {
  AuthRepository authRePository;
  AuthController({required this.authRePository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> selectRole(body) async {
    ResponseModel responseModel;
    _isLoading = true;
    update();
    try {
      Response response = await authRePository.selectRole(body);
      if (response.statusCode == 200 && response.body['success'] == true) {
        responseModel = ResponseModel(
            message: response.body['resultMessage'], isSuccess: true);
      } else {
        responseModel = ResponseModel(message: 'Failed', isSuccess: false);
      }
    } catch (e) {
      responseModel = ResponseModel(message: e.toString(), isSuccess: false);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> resendCode(body) async {
    ResponseModel responseModel;
    _isLoading = true;
    update();
    try {
      Response response = await authRePository.resendCode(body);
      if (response.statusCode == 200) {
        responseModel = ResponseModel(message: 'sent', isSuccess: true);
      } else {
        responseModel = ResponseModel(
            message: response.statusText.toString(), isSuccess: false);
      }
    } catch (e) {
      responseModel = ResponseModel(message: e.toString(), isSuccess: false);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> verifyCode(body) async {
    _isLoading = true;
    update();
    ResponseModel responseModel;

    try {
      Response response = await authRePository.verifyCode(body);
      if (response.statusCode == 200 &&
          response.body['resultMessage'] == "Code verification successful") {
        responseModel = ResponseModel(
            message: "Code verification successful", isSuccess: true);
        // save token

        await authRePository.saveToken(response.body["jwtToken"]);
        await authRePository.updateToken();
      } else {
        // print(response.body['resultMessage'].toString());
        responseModel = ResponseModel(message: 'ddd', isSuccess: false);
        print(response.statusCode);
      }
    } catch (e) {
      // print(e.toString());
      responseModel = ResponseModel(message: e.toString(), isSuccess: false);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> signUp(body) async {
    _isLoading = true;
    update();
    ResponseModel responseModel;
    try {
      Response response = await authRePository.signUp(body);
      print(response.body['success']);
      if (response.statusCode == 201 && response.body['success'] == true) {
        responseModel = ResponseModel(
            message: response.body['resultMessage'], isSuccess: true);
        await authRePository.saveToken(response.body["jwtToken"]);
      } else {
        responseModel = ResponseModel(
            message: response.body['resultMessage'], isSuccess: false);
      }
    } catch (e) {
      responseModel = ResponseModel(message: e.toString(), isSuccess: false);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  Future<ResponseModel> signIn(body) async {
    _isLoading = true;
    update();
    ResponseModel responseModel;
    try {
      Response response = await authRePository.signIn(body);

      if (response.statusCode == 200 && response.body['success'] == true) {
        responseModel = ResponseModel(
            message: response.body['resultMessage'], isSuccess: true);

        await authRePository.saveToken(response.body["jwtToken"]);
        await authRePository.updateToken();
      } else {
        responseModel = ResponseModel(
            message: response.body['resultMessage'], isSuccess: false);
      }
    } catch (e) {
      responseModel = ResponseModel(message: 'failed', isSuccess: false);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
