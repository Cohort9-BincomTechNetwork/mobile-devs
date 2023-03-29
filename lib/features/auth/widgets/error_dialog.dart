import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';

Future<dynamic> error(BuildContext context, message) {
  return showDialog(
      context: context,
      builder: (context) => Container(
              child: AlertDialog(
            title: Text(
              'Error',
              style: GoogleFonts.poppins(color: Colors.redAccent),
            ),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    'okay',
                    style: GoogleFonts.poppins(color: AppColors.primaryColor),
                  ))
            ],
          )));
}
