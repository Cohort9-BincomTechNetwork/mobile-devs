import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';

class TutorDetailWidget extends StatelessWidget {
  const TutorDetailWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(color: AppColors.primaryColor),
    );
  }
}
