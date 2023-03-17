import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:examina/features/splash/widgets/splash_button.dart';
import 'package:examina/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        color: AppColors.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IconButton(
            //     onPressed: () {
            //       Get.toNamed(RouteHelper.getSplashScreen());
            //     },
            //     icon: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(height: Dimension.height20 * 5),
            // image
            Image.asset(
              'assets/images/splash_image.png',
              height: Dimension.height150,
              width: Dimension.width20 * 20,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: Dimension.height30,
            ),

            //text

            Text(
              'Empower your education to the next level',
              textAlign: TextAlign.justify,
              softWrap: true,
              style: TextStyle(
                  fontSize: Dimension.font26,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Dimension.height10 / 2,
            ),
            const Text(
              'Learn new things and develop your problem solving skills',
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: Dimension.height20 / 4,
                    width: Dimension.width30,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
            ),

            SizedBox(height: Dimension.height10 * 10),

            // button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(RouteHelper.login),
                  child: SplashButton(
                    color: AppColors.primaryColor,
                    text: 'Next',
                    textColor: AppColors.whiteColor,
                  ),
                ),
                SplashButton(
                  color: AppColors.whiteColor,
                  text: 'Skip',
                  textColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
