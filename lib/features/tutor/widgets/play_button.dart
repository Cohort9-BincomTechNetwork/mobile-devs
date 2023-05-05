import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  PlayButton({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Center(child: Image(image: AssetImage(image)));
  }
}
