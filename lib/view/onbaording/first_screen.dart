import 'package:assesment_task/core/app_constants.dart';
import 'package:assesment_task/core/app_images.dart';
import 'package:assesment_task/core/app_strings.dart';
import 'package:assesment_task/view/home/home_screen.dart';
import 'package:assesment_task/view/onbaording/onboarding_screen.dart';
import 'package:assesment_task/view/onbaording/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: REdgeInsets.only(
                  right: 27,
                  top: 50,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Text(
                      AppStrings.skip,
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            TitleSection(),
            Spacer(),
            Stack(
              children: [
                SvgPicture.asset(
                  AppImages.kidphoto,
                  width: 375.w,
                  height: 450.h,
                ),
                SvgPicture.asset(
                  AppImages.boardingphoto,
                  width: 375.w,
                  height: 450.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
