import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';

class MakeTextInput extends StatelessWidget {
  MakeTextInput(
      {super.key,
      required this.icon,
      required this.label,
      required this.obscureText,
      required this.textEditingController,
      this.inputType = TextInputType.text,
      this.textInputAction = TextInputAction.next});
  bool obscureText;
  String label;
  IconData icon;
  TextEditingController textEditingController;
  TextInputType inputType;
  TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          textInputAction: TextInputAction.next,
          controller: textEditingController,
          obscureText: obscureText,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: GoogleFonts.poppins(color: AppColors.primaryColor),
            // label: Text(
            //   label,
            //   style: GoogleFonts.poppins(color: AppColors.primaryColor),
            // ),
            prefixIcon: Icon(
              icon,
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
}
