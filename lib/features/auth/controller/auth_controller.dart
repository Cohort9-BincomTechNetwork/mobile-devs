import 'package:get/get.dart';

import '../../../models/response_models.dart';
import '../repository/auth_repository.dart';

class AuthController extends GetxController {
  AuthRepository authRePository;
  AuthController({required this.authRePository});

  Future<ResponseModel> signUp(body) async {
    ResponseModel responseModel;
    try {
      Response response = await authRePository.signUp(body);
      if (response.statusCode == 201) {
        responseModel =
            ResponseModel(message: 'Successfully Registered', isSuccess: true);
      } else {
        responseModel = ResponseModel(
            message: response.statusText.toString(), isSuccess: false);
      }
    } catch (e) {
      responseModel = ResponseModel(message: e.toString(), isSuccess: false);
    }
<<<<<<< Updated upstream
=======
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
>>>>>>> Stashed changes
    return responseModel;
  }
}
