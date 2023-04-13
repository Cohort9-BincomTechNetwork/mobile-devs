import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class InputBox extends StatelessWidget {
  InputBox({super.key, this.width = 6, required this.text});
  double width;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: Dimension.width20 * width,
      child: Center(child: Text(text)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.primaryColor,
            width: 2,
          )),
    );
  }
}
