import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class UploadDoc extends StatelessWidget {
  UploadDoc(
      {super.key,
      required this.width,
      required this.height,
      required this.text});
  double width;
  double height;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: width * 0.8,
      height: height * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 3, color: AppColors.primaryColor)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(text),
        Icon(
          Icons.arrow_drop_down,
          size: height * 0.05,
          color: AppColors.primaryColor,
        ),
      ]),
    );
  }
}
