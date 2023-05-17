import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAndIconBTN extends StatelessWidget {
  TextAndIconBTN({required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.08,
      width: width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primaryColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          text,
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
