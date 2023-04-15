import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

class EmailVerificationTextInput extends StatelessWidget {
  EmailVerificationTextInput(
      {super.key,
      required this.controller,
      this.textInputAction = TextInputAction.next});
  TextEditingController controller;
  TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.width10 * 5,
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(),
      ),
    );
  }
}
