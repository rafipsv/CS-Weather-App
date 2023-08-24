// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glowstone/glowstone.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        topAnimation(),
        locationWidgets(),
      ],
    );
  }

  Widget topAnimation() {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Glowstone(
        radius: 20,
        velocity: 2,
        color: Colors.tealAccent.withOpacity(0.6),
        child: Image.asset(
          "assets/images/season.png",
          height: 50.h,
          width: 50.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget locationWidgets() {
    return Padding(
      padding: EdgeInsets.only(right: 15.w),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 22.sp,
            color: const Color(0xff027DD8),
          ),
          SizedBox(width: 5.w,),
          Text(
            "Chittagong, Bangladesh",
            style: GoogleFonts.pacifico(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 3,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
