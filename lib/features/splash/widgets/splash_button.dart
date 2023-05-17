import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  SplashButton(
      {required this.color, required this.text, required this.textColor});
  Color color;
  String text;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.2,
      height: height * 0.06,
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
    );
  }
}
