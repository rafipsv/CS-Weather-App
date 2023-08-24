// ignore_for_file: file_names

import 'package:cs_weather_app/Pages/HomePage/HomePage.dart';
import 'package:cs_weather_app/Pages/Search%20Page/Search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../HomePage/Widgets/HomeTop.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff181820),
        body: Column(
          children: [
            SizedBox(height: 20.h),
            // For view home top.
            const HomeTop(),
            const Spacer(),
            navigateBox(context),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget navigateBox(BuildContext context) {
    return Container(
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
        color: const Color(0xff171829),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ), (route) => false);
            },
            child: icons("Home", Icons.home_filled, false),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchPage();
                  },
                ),
              );
            },
            child: icons("Search", Icons.search, false),
          ),
          GestureDetector(
            child: icons("Profile", Icons.person, true),
          ),
        ],
      ),
    );
  }

  Widget icons(String toolstip, IconData iconData, bool isActive) {
    return Icon(
      iconData,
      size: 25.sp,
      color: isActive ? const Color(0xff0095FF) : const Color(0xff96979E),
    );
  }
}
