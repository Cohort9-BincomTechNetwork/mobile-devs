import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/features/auth/controller/auth_controller.dart';
import 'package:examina/features/auth/widgets/text_button.dart';
import 'package:examina/models/response_models.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../../common/widgets/custom_progress_indicator.dart';
import '../widgets/error_dialog.dart';

class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key, required this.email});
  final String email;

  selectRole(role, AuthController authController, context) async {
    Map<String, String> body = {'email': email, 'role': role};
    if (role == 'Tutor') {
      ResponseModel responseModel = await authController.selectRole(body);
      if (responseModel.isSuccess) {
        Get.toNamed(RouteHelper.getTutorProfileUpdateScreen());
        return;
      } else {
        error(context, responseModel.message);
        return;
      }
    } else {
      error(context, 'Candidate not availble yet');
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () => Get.back(),
        //   icon: Icon(
        //     Icons.arrow_back_ios_new,
        //     color: Colors.black,
        //   ),
        // ),
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
            GetBuilder<AuthController>(builder: (authController) {
              return authController.isLoading
                  ? CustomProgressIndicator()
                  : GestureDetector(
                      onTap: () => selectRole('Tutor', authController, context),
                      child: TextBTN(
                        width: 12,
                        text: 'Tutor',
                      ),
                    );
            }),
            SizedBox(
              height: Dimension.height30,
            ),
            GestureDetector(
              onTap: () => null,
              // Get.toNamed(RouteHelper.getTutorProfileUpdateScreen()),
              child: TextBTN(
                text: 'Candidate',
                width: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
