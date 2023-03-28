import 'package:examina/common/utils/constants.dart';
import 'package:examina/data/api/api_client.dart';
import 'package:examina/features/auth/controller/auth_controller.dart';
import 'package:examina/features/auth/repository/auth_repository.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => AuthRepository(apiClient: Get.find()));

  Get.lazyPut(() => AuthController(authRePository: Get.find()));
}
