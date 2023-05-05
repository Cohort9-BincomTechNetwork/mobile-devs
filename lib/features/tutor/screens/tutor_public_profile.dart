import 'package:examina/features/auth/widgets/social_btn.dart';
import 'package:examina/features/tutor/widgets/input_box.dart';
import 'package:examina/features/tutor/widgets/social_media_icon.dart';
import 'package:examina/features/tutor/widgets/tutor_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/colors.dart';
import '../widgets/play_button.dart';

class TutorPublicProfile extends StatelessWidget {
  const TutorPublicProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Icon(
            Icons.menu,
            color: AppColors.primaryColor,
            size: height * 0.06,
          ),
          SizedBox(
            width: 5,
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
        // title: Text(
        //   'Documents to upload',
        //   style: GoogleFonts.poppins(
        //       color: AppColors.primaryColor, fontWeight: FontWeight.bold),
        // ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // header
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // social media icons
                  Column(
                    children: [
                      SocialMediaIcon(icon: Icons.facebook),
                      SocialMediaIcon(icon: Icons.facebook),
                      SocialMediaIcon(icon: Icons.facebook),
                    ],
                  ),

                  // image

                  Container(
                    height: height * 0.27,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/tutor.png'),
                            fit: BoxFit.cover)),
                  ),

                  // social media icon
                  Column(
                    children: [
                      SocialMediaIcon(icon: Icons.facebook),
                      SocialMediaIcon(icon: Icons.facebook),
                    ],
                  ),
                ],
              ),
              // subject taught
              Text(
                'Maths Tutor',
                style: TextStyle(color: AppColors.primaryColor),
              ),
              // star rating
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_rate),
                  Icon(Icons.star_rate),
                  Icon(Icons.star_rate),
                ],
              ),

              // email
              Text(
                'johndeborah@gmail.com',
                style: TextStyle(color: AppColors.primaryColor),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              // video
              Container(
                width: width * 0.8,
                height: height * 0.17,
                child: Center(
                    child: Image(image: AssetImage('assets/images/play.png'))),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor)),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              // video lists
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlayButton(image: 'assets/images/play.png'),
                  PlayButton(image: 'assets/images/play.png'),
                  PlayButton(image: 'assets/images/play.png'),
                  PlayButton(image: 'assets/images/play.png'),
                  PlayButton(image: 'assets/images/play.png'),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              // tutor details section
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.09),
                width: width,
                // height: height * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TutorDetailWidget(text: 'Subject'),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    TutorDetailWidget(text: 'Degree'),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    TutorDetailWidget(text: 'Phone Number'),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    TutorDetailWidget(text: 'Experience'),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    TutorDetailWidget(text: 'Location'),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    TutorDetailWidget(text: 'Availability'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.009,
              ),
              // students details
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                    TutorDetailWidget(text: 'Number of Subject'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.009,
              ),

              Container(
                padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InputBox(
                      text: 'New Students',
                      width: 4,
                    ),
                    InputBox(
                      text: 'Current Students',
                      // width: 8,
                    ),
                    InputBox(text: 'Old Students')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
