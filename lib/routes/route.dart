import 'package:examina/features/auth/screens/email_verification_screen.dart';
import 'package:examina/features/auth/screens/forgot_password_screens/email_confirmation_screen.dart';
import 'package:examina/features/auth/screens/forgot_password_screens/forgot_password_screen.dart';
import 'package:examina/features/auth/screens/login.dart';
import 'package:examina/features/auth/screens/forgot_password_screens/new_password_screen.dart';
import 'package:examina/features/auth/screens/register.dart';
import 'package:examina/features/auth/screens/register.dart';
import 'package:examina/features/auth/screens/forgot_password_screens/reset_password_success_screen.dart';
import 'package:examina/features/home/screens/home.dart';
import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:examina/features/splash/screens/splash_screen2.dart';
import 'package:examina/features/tutor/screens/tutor_profile_update_screen.dart';
import 'package:get/get.dart';

import '../features/auth/screens/select_role_screen.dart';

class RouteHelper {
  // ONBOARDING SCREEN NAMES

  static const initial = '/';
  static const splashScreen = '/splash-screen';
  static const splashScreen2 = '/splash-screen-2';
  static const home = '/home';

  // AUTHENTICATION SCREEN NAMES

  static const login = '/auth/login';
  static const register = '/auth/register';
  static const selectRoleScreen = '/select-role';
  static const emailVerificationScreen = '/check-email-screen';

  // PASSWORD RESET SCREEN NAMES

  static const forgotPasswordScreen = '/forgot-password';
  static const emailConfirmationScreen = '/email-confirmation';
  static const newPasswordScreen = '/new-password-screen';
  static const passwordResetSuccessScreen = '/password-reset-success-screen';

// TUTOR SCREEN NAMES
  static const tutorProfileUpdateScreen = '/tutor-profile-update-screen';

  // --------  METHODS ---------------//

// SPLASH SCREEN METHODS
  static String getSplashScreen() => '$splashScreen';
  static String getSplashScreen2() => '$splashScreen2';
  static String getHomeScreen() => '$home';

// AUTHENTICATION SCREEN METHODS

  static String getSelectRoleScreen() => '$selectRoleScreen';
  static String getRegisterScreen() => '$register';

  static String getEmailVerificationScreen(email) =>
      '$emailVerificationScreen/?email=$email';
// /?email=$email'
// FORGOT PASSWORD SCREEN METHODS

  static String getForgotPasswordScreen() => '$forgotPasswordScreen';
  static String getNewPasswordScreen() => '$newPasswordScreen';
  static String getPasswordResetSuccessScreen() =>
      '$passwordResetSuccessScreen';
  static String getEmailConfirmationScreen() => '$emailConfirmationScreen';

// TUTOR SCREENS METHODS

  static String getTutorProfileUpdateScreen() => '$tutorProfileUpdateScreen';

  static List<GetPage> routes = [
    // SPLASH SCREEN PAGES

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
        name: home,
        page: () {
          return const HomeScreen();
        },
        transition: Transition.rightToLeft),

    // AUTHENTICATION PAGES

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
          return SignUpPage();
        }),
    GetPage(
        name: emailVerificationScreen,
        page: () {
          var email = Get.parameters['email'];
          return EmailVerificationScreen(
            email: email!,
          );
        },
        transition: Transition.rightToLeft),
    GetPage(
        name: selectRoleScreen,
        page: () {
          return const SelectRoleScreen();
        },
        transition: Transition.rightToLeft),

    // FORGOT PASSWORD PAGES

    GetPage(
        name: forgotPasswordScreen,
        page: () {
          return const ForgotPasswordScreen();
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
        name: emailConfirmationScreen,
        page: () {
          return EmailConfirmationScreen();
        },
        transition: Transition.rightToLeft),

// TUTOR PAGES

    GetPage(
        name: tutorProfileUpdateScreen,
        page: () {
          return TutorProfileUpdateScreen();
        },
        transition: Transition.fadeIn),
  ];
}
