import 'package:examina/common/utils/colors.dart';
import 'package:examina/common/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        // brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Create An Account",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          height: Dimension.height30,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          makeInput(
                              text_label: 'John Doe',
                              label: "Name",
                              text_icon: Icons.person_2_outlined,
                              obsureText: false),
                          makeInput(
                              text_label: 'exanmple@e.com',
                              label: "Email",
                              text_icon: Icons.email),
                          makeInput(
                              text_label: '***********',
                              label: "Password",
                              text_icon: Icons.lock,
                              obsureText: true),
                          makeInput(
                              text_label: '***********',
                              label: "Confirm Password",
                              text_icon: Icons.lock,
                              obsureText: true)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 40, left: 40, top: Dimension.height20 * 2),
                      child: Container(
                        padding: const EdgeInsets.only(top: 3, left: 3),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: Dimension.height30 * 2,
                          onPressed: () {},
                          color: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        Text("Login",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: AppColors.primaryColor)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, text_icon, text_label, obsureText = false}) {
  return Padding(
    padding: EdgeInsets.only(bottom: Dimension.height20 / 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(color: AppColors.primaryColor),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            label: Text(
              text_label,
              style: TextStyle(color: AppColors.primaryColor),
            ),
            prefixIcon: Icon(
              text_icon,
              color: AppColors.primaryColor,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                width: 2,
                color: AppColors.primaryColor,
              ),
            ),
            border: const OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.grey[400])
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}
