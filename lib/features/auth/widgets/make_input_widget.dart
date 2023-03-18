import 'package:examina/common/utils/colors.dart';
import 'package:flutter/material.dart';

class MakeInput extends StatelessWidget {
  MakeInput({required this.label, this.obscureText = false});
  String label;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: Icon(Icons.cancel),
          hintText: label,
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.primaryColor)),
        ),
      ),
    );
  }
}
