import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height; // 683.4
  static double screenWidth = Get.context!.width; // 411.4

// HEIGHT DIMENSIONS
  static double height10 = screenHeight / 68.34;
  static double height15 = screenHeight / 45.56;
  static double height20 = screenHeight / 34.17;
  static double height25 = screenHeight / 27.3;
  static double height45 = screenHeight / 15.2;
  static double height30 = screenHeight / 22.78;

  static double height100 = screenHeight / 6.83;
  static double height150 = screenHeight / 4.56;

// WIDTH DIMENSIONS
  // dynamic width, padding and margin
  static double width10 = screenWidth / 41.34;
  static double width15 = screenWidth / 27.43;
  static double width20 = screenWidth / 20.57;
  static double width30 = screenWidth / 13.71;
  static double width45 = screenWidth / 9.14;
  static double width250 = screenWidth / 1.65;

  // font size
  static double font16 = screenHeight / 42.7;
  static double font20 = screenHeight / 34.17;
  static double font26 = screenHeight / 26.3;

  // radius

  static double radius15 = screenHeight / 45.56;
  static double radius20 = screenHeight / 34.17;
  static double raduis30 = screenHeight / 22.78;

  // icon size
  static double iconSize16 = screenHeight / 42.7;
  static double iconSize24 = screenHeight / 28.48;
}
