import 'dart:async';

import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/book_store_image.dart';
import 'package:examina/common/widgets/custom_progress_indicator.dart';
import 'package:examina/features/auth/controller/auth_controller.dart';
import 'package:examina/features/auth/widgets/email_verif_text_input.dart';
import 'package:examina/features/auth/widgets/error_dialog.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/models/response_models.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_button.dart';

class EmailVerificationScreen extends StatelessWidget {
  EmailVerificationScreen({
    required this.email,
    super.key,
  });

  String email;

//   @override
//   State<EmailVerificationScreen> createState() =>
//       _EmailVerificationScreenState();
// }

// class _EmailVerificationScreenState extends State<EmailVerificationScreen>
//     with TickerProviderStateMixin {
//   Timer? countdownTimer;
//   Duration myDuration = Duration(days: 5);
//   void startTimer() {
//     countdownTimer =
//         Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
//   }

//   void stopTimer() {
//     setState(() => countdownTimer!.cancel());
//   }

//   // Step 5
//   void resetTimer() {
//     stopTimer();
//     setState(() => myDuration = Duration(days: 5));
//   }

//   void setCountDown() {
//     final reduceSecondsBy = 1;
//     setState(() {
//       final seconds = myDuration.inSeconds - reduceSecondsBy;
//       if (seconds < 0) {
//         countdownTimer!.cancel();
//       } else {
//         myDuration = Duration(seconds: seconds);
//       }
//     });
//   }

//   late AnimationController _controller;
//   int levelClock = 60;

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//         vsync: this,
//         duration: Duration(
//             seconds:
//                 levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
//         );

//     _controller.forward();
//   }

  String code = '';
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  TextEditingController code5 = TextEditingController();
  TextEditingController code6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    verifyCode(AuthController authController) async {
      // Get.toNamed(RouteHelper.getSelectRoleScreen());
      // return;
      code = code1.text +
          code2.text +
          code3.text +
          code4.text +
          code5.text +
          code6.text;
      if (code1.text.isEmpty ||
          code2.text.isEmpty ||
          code3.text.isEmpty ||
          code4.text.isEmpty ||
          code5.text.isEmpty ||
          code6.text.isEmpty) {
        Get.snackbar(
          'Error',
          'All fields are required',
          backgroundColor: AppColors.primaryColor,
          colorText: Colors.white,
          duration: Duration(seconds: 3),
        );
        return;
      } else {
        var body = {"email": email, "code": code};
        ResponseModel responseModel = await authController.verifyCode(body);

        if (responseModel.isSuccess) {
          Get.toNamed(RouteHelper.getSelectRoleScreen());
          return;
        } else {
          error(context, responseModel.message);
          return;
        }
      }

      // Get.toNamed(RouteHelper.getTutorProfileUpdateScreen());
      // return;
    }

    // print(widget.email);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.whiteColor,
          elevation: 0,
          // leading: IconButton(
          //     color: Colors.black,
          //     onPressed: () => Get.back(),
          //     icon: Icon(Icons.arrow_back_ios_new)),
        ),
        body: GetBuilder<AuthController>(builder: (authController) {
          return authController.isLoading
              ? CustomProgressIndicator()
              : SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BookStoreImage(),
                        SizedBox(
                          height: Dimension.height20,
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
                          height: Dimension.height20,
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
                              width: Dimension.width15,
                            ),
                            EmailVerificationTextInput(
                              controller: code2,
                            ),
                            SizedBox(
                              width: Dimension.width15,
                            ),
                            EmailVerificationTextInput(
                              controller: code3,
                            ),
                            SizedBox(
                              width: Dimension.width15,
                            ),
                            EmailVerificationTextInput(
                              controller: code4,
                            ),
                            SizedBox(
                              width: Dimension.width15,
                            ),
                            EmailVerificationTextInput(
                              controller: code5,
                            ),
                            SizedBox(
                              width: Dimension.width15,
                            ),
                            EmailVerificationTextInput(
                              controller: code6,
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                          height: Dimension.height20 * 3,
                        ),
                        // BUTTON
                        GestureDetector(
                          onTap: () => verifyCode(authController),
                          child: TextBTN(
                            text: "Very OTP",
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        }));
  }
}


// class Countdown extends AnimatedWidget {
//   Countdown({required this.animation}) : super(listenable: animation);
//   Animation<int> animation;

//   @override
//   build(BuildContext context) {
//     Duration clockTimer = Duration(seconds: animation.value);

//     String timerText =
//         '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

//     // print('animation.value  ${animation.value} ');
//     // print('inMinutes ${clockTimer.inMinutes.toString()}');
//     // print('inSeconds ${clockTimer.inSeconds.toString()}');
//     // print(
//     //     'inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

//     return Text(
//       "$timerText",
//       style: TextStyle(
//         fontSize: 20,
//         color: Theme.of(context).primaryColor,
//       ),
//     );
//   }
// }
