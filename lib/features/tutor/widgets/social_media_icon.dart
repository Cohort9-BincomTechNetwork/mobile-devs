import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({super.key, required this.icon});
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 15,
      child: Icon(
        icon,
      ),
    );
  }
}
