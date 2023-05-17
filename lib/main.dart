import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
import 'package:examina/features/auth/controller/auth_controller.dart';
import 'package:examina/features/auth/screens/login.dart';
import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:examina/features/tutor/screens/tutor_profile_update_screen.dart';

import 'package:examina/routes/route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  GoogleFonts.config.allowRuntimeFetching = false;
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: const SplashScreen(),
        //LoginPage(),
        // TutorProfileUpdateScreen(),
        initialRoute: RouteHelper.getSplashScreen(),
        getPages: RouteHelper.routes,
      );
    });

    // testTEST123//
    //#056CB4
    // test@test.com
    // TESTtest123//
  }
}

// git pull origin master