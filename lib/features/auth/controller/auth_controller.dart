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
    _isLoading = false;
    update();
    return responseModel;
  }
}
