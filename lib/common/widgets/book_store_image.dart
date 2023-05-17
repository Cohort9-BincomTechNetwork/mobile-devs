import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BookStoreImage extends StatelessWidget {
  const BookStoreImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Image.asset(
        'assets/images/splash_image.png',
        height: height * 0.25,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
