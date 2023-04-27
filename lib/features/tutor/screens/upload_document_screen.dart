import 'package:examina/common/utils/colors.dart';
import 'package:examina/features/tutor/widgets/upload_doc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/route.dart';
import '../../auth/widgets/text_button.dart';
import '../widgets/input_box.dart';

class UploadDocucmentScreen extends StatelessWidget {
  const UploadDocucmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Documents to upload',
          style: GoogleFonts.poppins(
              color: AppColors.primaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: width,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputBox(
              text: "Profile Photo",
            ),
            SizedBox(
              height: height * 0.05,
            ),
            UploadDoc(
              text: 'ID',
              width: width,
              height: height,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            UploadDoc(
              text: 'Certificate',
              width: width,
              height: height,
            ),
            SizedBox(
              height: height * 0.4,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(RouteHelper.getUploadDocumentScreen()),
              child: TextBTN(
                text: 'Update',
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
