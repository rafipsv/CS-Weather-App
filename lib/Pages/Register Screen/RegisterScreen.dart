// ignore_for_file: file_names

import 'package:cs_weather_app/Pages/Login%20Screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomePage/HomePage.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff181820),
        body: SingleChildScrollView(
          child: Column(
            children: [
              topLogo(context),
              customText(),
              SizedBox(height: 50.h),
              customField(
                "Email",
                emailController,
                false,
              ),
              SizedBox(height: 30.h),
              customField(
                "Password",
                passwordController,
                true,
              ),
              SizedBox(height: 150.h),
              customButton("Sign Up", context),
              SizedBox(height: 30.h),
              customText2(context),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget topLogo(BuildContext context) {
    return Image.asset(
      "assets/images/signin_balls.png",
      height: 150.h,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }

  Widget customText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sign Up.",
          style: GoogleFonts.pacifico(
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget customText2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        }), (route) => false);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account? ",
            style: GoogleFonts.pacifico(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 3,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          Text(
            "Sign In",
            style: GoogleFonts.pacifico(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget customField(
    String hintText,
    TextEditingController controller,
    bool isHide,
  ) {
    return Container(
      height: 50.h,
      width: 350.w,
      padding: EdgeInsets.only(left: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          width: 2.w,
          color: Colors.grey,
        ),
      ),
      child: TextField(
        obscureText: isHide,
        style: GoogleFonts.pacifico(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          color: Colors.white,
        ),
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.pacifico(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
      ),
    );
  }

  Widget customButton(String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) {
          return const HomePage();
        }), (route) => false);
      },
      child: Container(
        height: 50.h,
        width: 350.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xffDB56C3),
              Color(0xffFE9683),
            ],
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.pacifico(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
