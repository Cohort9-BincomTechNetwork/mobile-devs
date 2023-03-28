import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class SocialBtn extends StatelessWidget {
  SocialBtn({required this.image, required this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        padding: const EdgeInsets.only(top: 3, left: 3),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: () {},
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage(image)),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
