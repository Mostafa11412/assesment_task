import 'package:assesment_task/core/app_constants.dart';
import 'package:assesment_task/core/app_images.dart';
import 'package:assesment_task/global_widgets/app_icon.dart';
import 'package:assesment_task/global_widgets/custom_button.dart';
import 'package:assesment_task/global_widgets/text_form_feild.dart';
import 'package:assesment_task/view/login/widgets/custom_divider.dart';
import 'package:assesment_task/view/onbaording/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "دخول كزائر",
                          style: TextStyle(
                              fontFamily: 'Zain',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: AppConstants.buttonC,
                              decoration: TextDecoration.underline,
                              decorationColor: AppConstants.buttonC),
                        )),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                AppIcon(
                  d: true,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "مرحبًا بك👋 قم بتسجيل الدخول",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomFormFeild(
                  typePass: false,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomFormFeild(
                  typePass: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "هل نسيت كلمة المرور ؟",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 21.h,
                ),
                CustomButton(
                  textColor: Colors.white,
                  buttonColor: AppConstants.buttonC,
                  buttonTitle: "دخول",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnboardingScreen(),
                        ));
                  },
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomDivider(),
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  asset: AppImages.apple,
                  buttonColor: Colors.white,
                  buttonTitle: "تسجيل بحساب ابل",
                  onPressed: () {},
                  textColor: Colors.black,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomButton(
                  asset: AppImages.google,
                  buttonColor: Colors.white,
                  buttonTitle: "تسجيل بحساب غوغل",
                  onPressed: () {},
                  textColor: Colors.black,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " تسجيل حساب جديد",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 14,
                          color: AppConstants.buttonC,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "  ليس لديك حساب ؟",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "بتسجيل الدخول، أوافق على شروط الخدمة وإرشادات المجتمع وقرأت سياسة الخصوصية.",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
