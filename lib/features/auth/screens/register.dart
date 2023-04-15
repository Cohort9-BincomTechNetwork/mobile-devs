import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/custom_progress_indicator.dart';
import 'package:examina/features/auth/controller/auth_controller.dart';
import 'package:examina/common/widgets/make_text_input.dart';
import 'package:examina/models/signup_model.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../widgets/error_dialog.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  // String role;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // print(role);
    void Signup(AuthController authController) async {
      // return;
      var email = emailController.text;
      var password = passwordController.text;
      var confirmPassword = passwordConfirmController.text;

      if (email.isEmpty || email == '') {
        error(context, 'Email cannot be empty');
        return;
      } else if (!email.contains('@')) {
        error(context, 'Email must be rightly formed');
        return;
      } else if (password.isEmpty || password == '') {
        error(context, 'password cannot be empty');
        return;
      } else if (password != confirmPassword) {
        error(context, 'Passwprd must be same with password confirm');
        return;
      } else {
        SignUpModel signUpModel = SignUpModel(
          email: email,
          password: password,
          confirmPassword: confirmPassword,
        );

        var response = await authController.signUp(signUpModel.toMap());
        if (response.isSuccess) {
          // print(response.message);
          Get.snackbar(
            'Success',
            'A code has been sent to your email',
            backgroundColor: AppColors.primaryColor,
            colorText: Colors.white,
            duration: Duration(seconds: 20),
          );

          // Get.toNamed(RouteHelper.getEmailVerificationScreen());
          Get.toNamed(RouteHelper.getSelectRoleScreen());
          return;
        } else {
          // error(context, response.message + ' please login');
          Get.snackbar(
            'Error',
            response.message + ' please login',
            backgroundColor: AppColors.primaryColor,
            colorText: Colors.white,
            duration: Duration(seconds: 3),
          );
          return;
        }
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   // brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: const Icon(
      //         Icons.arrow_back_ios,
      //         size: 20,
      //         color: Colors.black,
      //       )),
      // ),
      body: SafeArea(
          child: GetBuilder<AuthController>(
        builder: (authConroller) => authConroller.isLoading
            ? CustomProgressIndicator()
            : SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: Dimension.height20 / 4,
                      ),
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Create An Account",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: Dimension.height30,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MakeTextInput(
                                    textEditingController: emailController,
                                    icon: Icons.email,
                                    label: 'exanmple@e.com',
                                    obscureText: false),
                                SizedBox(
                                  height: Dimension.height30,
                                ),
                                MakeTextInput(
                                    textEditingController: passwordController,
                                    icon: Icons.lock,
                                    label: '***********',
                                    obscureText: false),
                                SizedBox(
                                  height: Dimension.height30,
                                ),
                                MakeTextInput(
                                    textInputAction: TextInputAction.send,
                                    textEditingController:
                                        passwordConfirmController,
                                    icon: Icons.lock,
                                    label: "Confirm Password",
                                    obscureText: false),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: Dimension.width20 * 2,
                                left: Dimension.width20 * 2,
                                top: Dimension.height20 * 2),
                            child: Container(
                              padding: const EdgeInsets.only(top: 3, left: 3),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: Dimension.height100 / 2,
                                onPressed: () {
                                  Signup(authConroller);
                                },
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? "),
                              GestureDetector(
                                onTap: () => Get.toNamed(RouteHelper.login),
                                child: Text("Login",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: AppColors.primaryColor)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      )),
    );
  }
}
