import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/features/auth/widgets/text_button.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(Dimension.height20 / 2),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: Dimension.height30 + 10,
            ),
            Text(
              "Register as ...",
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            SizedBox(
              height: Dimension.height30,
            ),
            GestureDetector(
              onTap: () =>
                  Get.toNamed(RouteHelper.getTutorProfileUpdateScreen()),
              child: TextBTN(
                width: 12,
                text: 'Tutor',
              ),
            ),
            SizedBox(
              height: Dimension.height30,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(RouteHelper.getRegisterScreen()),
              child: TextBTN(
                text: 'student',
                width: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
