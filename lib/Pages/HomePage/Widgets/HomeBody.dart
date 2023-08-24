// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customText(),
        SizedBox(height: 50.h),
        homeImage(),
        SizedBox(height: 30.h),
        weatherText("Its cloudy"),
        SizedBox(height: 10.h),
        temperatureText("29°")
      ],
    );
  }

  Widget customText() {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Row(
        children: [
          Text(
            "Today's Report",
            style: GoogleFonts.pacifico(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget homeImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/sun.png",
          height: 130.h,
          width: 130.w,
        ),
      ],
    );
  }

  Widget weatherText(String title) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 3,
        color: Colors.white,
      ),
    );
  }

  Widget temperatureText(String title) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        fontSize: 70.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 3,
        color: Colors.white,
      ),
    );
  }
}
