import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/common/widgets/make_text_input.dart';
import 'package:examina/features/auth/widgets/text_button.dart';
import 'package:examina/features/tutor/widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TutorProfileUpdateScreen extends StatelessWidget {
  TutorProfileUpdateScreen({super.key});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: 600,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimension.height45,
                    ),
                    Text(
                      'Profile Update',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                    SizedBox(
                      height: Dimension.height45,
                    ),
                    MakeTextInput(
                        icon: Icons.person,
                        label: 'John Deborah',
                        obscureText: false,
                        textEditingController: nameController),
                    SizedBox(
                      height: Dimension.height30,
                    ),
                    MakeTextInput(
                        icon: Icons.phone,
                        label: 'Phone Number',
                        obscureText: false,
                        textEditingController: nameController),
                    SizedBox(
                      height: Dimension.height30,
                    ),
                    MakeTextInput(
                        icon: Icons.date_range,
                        label: 'Date of Birth',
                        obscureText: false,
                        textEditingController: nameController),
                    SizedBox(
                      height: Dimension.height30,
                    ),
                    MakeTextInput(
                        icon: Icons.edit_location,
                        label: 'Location',
                        obscureText: false,
                        textEditingController: nameController),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    'Documents to upload',
                    style: GoogleFonts.poppins(
                      color: AppColors.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: Dimension.height10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InputBox(
                        text: "Profile Photo",
                      ),
                      InputBox(
                        text: "ID",
                      ),
                      InputBox(
                        text: "Certificate",
                      ),
                    ],
                  ),
                ],
              ),
              TextBTN(text: 'Update'),
            ],
          ),
        ),
      ),
    );
  }
}
