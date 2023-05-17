import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/book_store_image.dart';
import 'package:examina/features/auth/widgets/make_input_widget.dart';
import 'package:examina/features/auth/widgets/text_and_icon_btn.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/text_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
          height: height,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BookStoreImage(),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Reset your password",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                  // padding: EdgeInsets.all(10),
                  child: MakeInput(label: "example@gmail.com")),
              SizedBox(
                height: height * 0.1,
              ),
              // BUTTON
              GestureDetector(
                onTap: () =>
                    Get.toNamed(RouteHelper.getPasswordResetSuccessScreen()),
                child: TextBTN(
                  width: 8,
                  text: "Reset Password",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
