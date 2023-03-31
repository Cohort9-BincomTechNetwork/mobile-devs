import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBTN extends StatelessWidget {
  TextBTN({required this.text, this.width = 5, this.fontSize = 20});
  String text;
  double width;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height10 * 6,
      width: Dimension.width30 * width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
