import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAndIconBTN extends StatelessWidget {
  const TextAndIconBTN({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimension.height10 * 6,
      width: Dimension.width30 * 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Continue',
          style: GoogleFonts.poppins(color: AppColors.whiteColor, fontSize: 15),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward,
          color: AppColors.whiteColor,
        )
      ]),
    );
  }
}
