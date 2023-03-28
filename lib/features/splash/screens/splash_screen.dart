import 'package:examina/common/utils/colors.dart';
import 'package:examina/features/splash/widgets/splash_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:examina/routes/route.dart';
import 'package:examina/common/utils/dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30, left: 10, right: 10),
        color: AppColors.primaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Expanded(child: Container()),
            Container(
              height: Dimension.height100,
              width: Dimension.width250 + 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Logo.png')),
              ),
            ),

            SizedBox(
              height: 200,
            ),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SplashButton(
                  textColor: AppColors.whiteColor,
                  color: AppColors.primaryColor,
                  text: 'Skip',
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(RouteHelper.getSplashScreen2()),
                  child: SplashButton(
                    textColor: AppColors.whiteColor,
                    color: AppColors.splashButtonColor,
                    text: 'Next',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
