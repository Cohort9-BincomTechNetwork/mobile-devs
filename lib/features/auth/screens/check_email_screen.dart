import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/book_store_image.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_button.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: Dimension.height20,
              ),
              Text(
                "Check Your Email",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),

              Text(
                "We just sent an OTP to your registered email address",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: Dimension.height20,
              ),
              Container(
                  // padding: EdgeInsets.all(10),
                  child: MakeInput(label: "example@gmail.com")),

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
