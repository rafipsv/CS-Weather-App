// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          infoWidget("assets/images/sun2.png", "23/km/h", "Sun"),
          infoWidget("assets/images/sun.png", "30%", "Humidity"),
          infoWidget("assets/images/rainy-day.png", "23/km/h", "Chance of rain"),
        ],
      ),
    );
  }

  Widget infoWidget(String imageUrl, String centerText, String infoText) {
    return Column(
      children: [
        homeImage(imageUrl),
        SizedBox(height: 5.h),
        customText(centerText),
        SizedBox(height: 5.h),
        customText2(infoText)
      ],
    );
  }

  Widget customText(String title) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 3,
        color: Colors.white,
      ),
    );
  }

  Widget homeImage(String imageUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          height: 30.h,
          width: 30.w,
        ),
      ],
    );
  }

  Widget customText2(String title) {
    return Text(
      title,
      style: GoogleFonts.pacifico(
        fontSize: 13.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 3,
        color: Colors.white.withOpacity(0.8),
      ),
    );
  }
}
