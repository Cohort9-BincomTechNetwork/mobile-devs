import 'package:examina/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:examina/routes/route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const SplashScreen(),
      initialRoute: RouteHelper.getSplashScreen(),
      getPages: RouteHelper.routes,
    );

    //#056CB4
  }
}

// git pull origin master