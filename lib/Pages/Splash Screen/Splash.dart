// ignore_for_file: file_names

import 'dart:async';

import 'package:cs_weather_app/Pages/Login%20Screen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Position position;
  @override
  void initState() {
    super.initState();
    determinePosition();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return const LoginScreen();
        },
      ), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181820),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInDown(
            delay: const Duration(milliseconds: 700),
            duration: const Duration(milliseconds: 1000),
            child: splashLogo(),
          ),
          FadeInUp(
            delay: const Duration(milliseconds: 1700),
            duration: const Duration(milliseconds: 1000),
            child: customText(),
          ),
        ],
      ),
    );
  }

  Widget splashLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/season.png",
          height: 150.h,
          width: 150.w,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  Widget customText() {
    return Text(
      "Track your weather",
      style: GoogleFonts.pacifico(
        fontSize: 30.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }

  void determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.requestPermission();
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    position = await Geolocator.getCurrentPosition();
    debugPrint("${position.latitude} This is lat");
    debugPrint("${position.longitude} This is Long");
    setState(() async {});
  }
}
