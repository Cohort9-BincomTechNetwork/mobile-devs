import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BookStoreImage extends StatelessWidget {
  const BookStoreImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/splash_image.png',
        height: Dimension.height150,
        width: Dimension.width20 * 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
