import 'dart:async';

import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/book_store_image.dart';
import 'package:examina/features/auth/widgets/email_verif_text_input.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/text_button.dart';

class EmailConfirmationScreen extends StatelessWidget {
  EmailConfirmationScreen({super.key});

  String code = '';
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  TextEditingController code5 = TextEditingController();
  TextEditingController code6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: IconButton(
            color: Colors.black,
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BookStoreImage(),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Email Confirmation",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "We just sent an OTP to your registered email address",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              // Container(
              //     // padding: EdgeInsets.all(10),
              //     child: MakeInput(label: "example@gmail.com")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailVerificationTextInput(
                    controller: code1,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  EmailVerificationTextInput(controller: code1),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  EmailVerificationTextInput(controller: code2),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  EmailVerificationTextInput(controller: code3),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  EmailVerificationTextInput(controller: code4),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  EmailVerificationTextInput(controller: code5),
                ],
              ),
              SizedBox(
                width: width * 0.02,
              ),
              // Countdown(
              //   animation: StepTween(
              //     begin: levelClock, // THIS IS A USER ENTERED NUMBER
              //     end: 0,
              //   ).animate(_controller),
              // ),
              // Text(
              //   '0.59',
              //   style: GoogleFonts.poppins(
              //       color: AppColors.primaryColor, fontSize: 20),
              // ),
              // _controller.isCompleted? Get.snackbar('Failed', 'Time elapsed'):SizedBox.shrink()

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't get a code?"),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "Resend",
                        style: GoogleFonts.poppins(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              // BUTTON
              GestureDetector(
                onTap: () => Get.toNamed(RouteHelper.getNewPasswordScreen()),
                child: TextBTN(
                  text: "Very OTP",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
