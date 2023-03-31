import 'package:get/get.dart';

import '../../../models/response_models.dart';
import '../repository/auth_repository.dart';

class AuthController extends GetxController {
  AuthRepository authRePository;
  AuthController({required this.authRePository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> signUp(body) async {
    _isLoading = true;
    update();
    ResponseModel responseModel;
    try {
      Response response = await authRePository.signUp(body);
      print(response.body['success']);
      if (response.statusCode == 201 && response.body['success'] == true) {
        responseModel =
            ResponseModel(message: 'Successfully Registered', isSuccess: true);
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
      print(response.body);
      if (response.statusCode == 201 && response.body['success'] == true) {
        responseModel =
            ResponseModel(message: 'Successfully Registered', isSuccess: true);
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
