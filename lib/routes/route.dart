import 'package:examina/features/auth/screens/login.dart';
import 'package:examina/features/auth/screens/register.dart';
import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:examina/features/splash/screens/splash_screen2.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const initial = '/';
  static const splashScreen = '/splash-screen';
  static const splashScreen2 = '/splash-screen-2';
  static const login = '/auth/login';
  static const register = '/auth/register';

  static String getSplashScreen() => '$splashScreen';
  static String getSplashScreen2() => '$splashScreen2';

  static List<GetPage> routes = [
    GetPage(
        name: splashScreen,
        page: () {
          return const SplashScreen();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: splashScreen2,
        page: () {
          return const SplashScreen2();
        },
        transition: Transition.downToUp),
    GetPage(
        name: login,
        page: () {
          return const LoginPage();
        }),
    GetPage(
        name: register,
        page: () {
          return const SignUpPage();
        }),
  ];
}
