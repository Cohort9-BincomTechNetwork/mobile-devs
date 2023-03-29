import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/features/auth/widgets/social_btn.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/routes/route.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // brightness: Brightness.light,
        backgroundColor: Colors.white,
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(
        //       Icons.arrow_back_ios,
        //       size: 20,
        //       color: Colors.black,
        //     )),
      ),
      body: SizedBox(
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
                    const SizedBox(
                      height: 20,
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
                      height: Dimension.height20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimension.width20 * 2,
                          vertical: Dimension.height20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Dimension.width20 * 5 + 30,
                            height: 2,
                            color: AppColors.primaryColor,
                          ),
                          Text('Or'),
                          Container(
                            width: Dimension.width20 * 5 + 30,
                            height: 2,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      makeInput(
                          label: "Email", text_icon: Icons.person_2_outlined),
                      SizedBox(
                        height: Dimension.height30,
                      ),
                      makeInput(
                          label: "Password",
                          text_icon: Icons.lock,
                          obsureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Get.toNamed(
                              RouteHelper.getForgotPasswordScreen()),
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                                color: AppColors.primaryColor),
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: Dimension.height30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {},
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
                  height: Dimension.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(RouteHelper.register),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label, text_icon, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Text(
      //   label,
      //   style: const TextStyle(
      //       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      // ),
      // const SizedBox(
      //   height: 5,
      // ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          label: Text(
            label,
            style: GoogleFonts.poppins(color: AppColors.primaryColor),
          ),
          prefixIcon: Icon(
            text_icon,
            color: AppColors.primaryColor,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          border: const OutlineInputBorder(
              // borderSide: BorderSide(color: Colors.grey[400])
              ),
        ),
      ),
    ],
  );
}
