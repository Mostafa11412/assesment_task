// ignore_for_file: use_build_context_synchronously

import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/core/utils/app_images.dart';
import 'package:assesment_task/core/utils/app_strings.dart';
import 'package:assesment_task/view/home/home_screen.dart';
import 'package:assesment_task/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(
          ),
        ),
        (route) => true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 318.h,
              ),
              SvgPicture.asset(
                AppImages.appIcon,
                height: 68.h,
                width: 150.5.w,
              ),
              SizedBox(
                height: 311.h,
              ),
              SvgPicture.asset(
                AppImages.barsAnim,
                height: 19.h,
                width: 25.w,
              ),
              SizedBox(
                height: 36.h,
              ),
              Text(
                AppStrings.betaVersion,
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 12.sp,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
