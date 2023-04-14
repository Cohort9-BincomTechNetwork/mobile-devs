import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

class EmailVerificationTextInput extends StatelessWidget {
  const EmailVerificationTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.width10 * 5,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(),
      ),
    );
  }
}
