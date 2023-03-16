import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:examina/features/splash/screens/splash_screen2.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const initial = '/';
  static const splashScreen = '/splash-screen';
  static const splashScreen2 = '/splash-screen-2';

  static String getSplashScreen() => '$splashScreen';
  static String getSplashScreen2() => '$splashScreen2';

  static List<GetPage> routes = [
    GetPage(
        name: splashScreen,
        page: () {
          return SplashScreen();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: splashScreen2,
        page: () {
          return SplashScreen2();
        },
        transition: Transition.downToUp),
  ];
}
