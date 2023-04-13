import 'package:examina/features/auth/screens/check_email_screen.dart';
import 'package:examina/features/auth/screens/forgot_password_screen.dart';
import 'package:examina/features/auth/screens/login.dart';
import 'package:examina/features/auth/screens/new_password_screen.dart';
import 'package:examina/features/auth/screens/register.dart';
import 'package:examina/features/auth/screens/register.dart';
import 'package:examina/features/auth/screens/reset_password_success_screen.dart';
import 'package:examina/features/home/screens/home.dart';
import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:examina/features/splash/screens/splash_screen2.dart';
import 'package:examina/features/tutor/screens/tutor_profile_update_screen.dart';
import 'package:get/get.dart';

import '../features/auth/screens/select_role_screen.dart';

class RouteHelper {
  static const initial = '/';
  static const splashScreen = '/splash-screen';
  static const splashScreen2 = '/splash-screen-2';
  static const home = '/home';

  static const login = '/auth/login';
  static const register = '/auth/register';
  static const selectRoleScreen = '/select-role';
  static const forgotPasswordScreen = '/forgot-password';
  static const checkEmailScreen = '/check-email-screen';
  static const newPasswordScreen = '/new-password-screen';
  static const passwordResetSuccessScreen = '/password-reset-success-screen';

  static const tutorProfileUpdateScreen = '/tutor-profile-update-screen';

  static String getSplashScreen() => '$splashScreen';
  static String getSplashScreen2() => '$splashScreen2';
  static String getForgotPasswordScreen() => '$forgotPasswordScreen';
  static String getCheckEmailScreen() => '$checkEmailScreen';
  static String getNewPasswordScreen() => '$newPasswordScreen';
  static String getPasswordResetSuccessScreen() =>
      '$passwordResetSuccessScreen';
  static String getRegisterScreen(role) => '$register/?role=$role';
  static String getSelectRoleScreen() => '$selectRoleScreen';
  static String getHomeScreen() => '$home';

  static String getTutorProfileUpdateScreen() => '$tutorProfileUpdateScreen';

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
          return LoginPage();
        }),
    GetPage(
        // parameters: {'role': role},
        name: register,
        page: () {
          var role = Get.parameters['role'];
          return SignUpPage(role: role!);
        }),
    GetPage(
        name: forgotPasswordScreen,
        page: () {
          return const ForgotPasswordScreen();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: checkEmailScreen,
        page: () {
          return const CheckEmailScreen();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: newPasswordScreen,
        page: () {
          return const NewPasswordScreen();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: passwordResetSuccessScreen,
        page: () {
          return const ResetPasswordSuccessScreen();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: selectRoleScreen,
        page: () {
          return const SelectRoleScreen();
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: tutorProfileUpdateScreen,
        page: () {
          return TutorProfileUpdateScreen();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: home,
        page: () {
          return const HomeScreen();
        },
        transition: Transition.rightToLeft),
  ];
}
