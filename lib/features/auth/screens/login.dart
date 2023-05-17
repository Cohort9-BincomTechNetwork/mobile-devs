import 'package:flutter/material.dart';
import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/custom_progress_indicator.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/common/widgets/make_text_input.dart';
import 'package:examina/features/auth/widgets/social_btn.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/routes/route.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/auth_controller.dart';
import '../widgets/error_dialog.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    void SignIn(AuthController authController) async {
      var email = emailController.text;
      var password = passwordController.text;
      if (email.isEmpty || email == '') {
        error(context, 'Email cannot be empty');
        return;
      } else if (!email.contains('@')) {
        error(context, 'Email must be rightly formed');
        return;
      } else if (password.isEmpty || password == '') {
        error(context, 'password cannot be empty');
        return;
      } else {
        Map<String, String> body = {
          'email': email,
          'password': password,
          'role': 'Tutor'
        };
        var response = await authController.signIn(body);
        if (response.isSuccess) {
          print(response.message);
          if (response.message == "User has no role") {
            Get.toNamed(RouteHelper.getSelectRoleScreen(email));
            return;
          }
          if (response.message == "User has not verified account") {
            Get.snackbar(
              'Success',
              'A code has been sent to your email',
              backgroundColor: AppColors.primaryColor,
              colorText: Colors.white,
              duration: Duration(seconds: 5),
            );
            Get.toNamed(RouteHelper.getEmailVerificationScreen(email));
            return;
          }
          Get.toNamed(RouteHelper.getHomeScreen());
        } else {
          error(context, response.message);
          return;
        }
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

          //     )),
        ),
        body: GetBuilder<AuthController>(
          builder: (authController) => authController.isLoading
              ? CustomProgressIndicator()
              : SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                SocialBtn(
                                  image: 'assets/images/google.png',
                                  text: "Login with Google",
                                ),

                                // ElevatedButton.icon(
                                //   onPressed: () {
                                //     print("You pressed Icon Elevated Button");
                                //   },
                                //   icon:
                                //       Icon(Icons.save), //icon data for elevated button
                                //   label: Text("Elevated Button with Icon"), //label text
                                //   style: ElevatedButton.styleFrom(
                                //     backgroundColor: Colors.blue,
                                //   ),
                                // ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                ),
                                SocialBtn(
                                    image: "assets/images/facebook.png",
                                    text: "Login with Facebook"),

                                // const SizedBox(
                                //   height: 40,
                                //   width: 150.0,
                                //   child: Divider(
                                //     color: Colors.blue,
                                //   ),
                                // ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.09,
                                      vertical:
                                          MediaQuery.of(context).size.width *
                                              0.08),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width * 0.3,
                                        height: 2,
                                        color: AppColors.primaryColor,
                                      ),
                                      Text('Or'),
                                      Container(
                                        width: width * 0.3,
                                        height: 2,
                                        color: AppColors.primaryColor,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.09),
                              child: Column(
                                children: [
                                  MakeTextInput(
                                      textEditingController: emailController,
                                      icon: Icons.person_2_outlined,
                                      label: "Email",
                                      obscureText: false),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  MakeTextInput(
                                      textEditingController: passwordController,
                                      icon: Icons.lock,
                                      label: "Password",
                                      obscureText: true),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.08),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () => Get.toNamed(RouteHelper
                                          .getForgotPasswordScreen()),
                                      child: Text(
                                        'Forgot Password?',
                                        style: GoogleFonts.poppins(
                                            color: AppColors.primaryColor),
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              height: height * 0.09,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.08),
                              child: Container(
                                padding: const EdgeInsets.only(top: 3, left: 3),
                                child: MaterialButton(
                                  minWidth: double.infinity,
                                  height: height * 0.09,
                                  onPressed: () {
                                    SignIn(authController);
                                  },
                                  color: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?"),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () => Get.toNamed(
                                      RouteHelper.getRegisterScreen()),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ));
  }
}
