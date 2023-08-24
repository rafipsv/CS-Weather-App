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
}
