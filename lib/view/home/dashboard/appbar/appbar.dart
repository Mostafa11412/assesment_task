import 'package:assesment_task/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 120.h),
      child: Padding(
        padding: REdgeInsets.only(top: 30, left: 30, right: 30),
        child: AppBar(
          leading: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: Color(0xFFF9FAFB).withOpacity(.11)),
            child: Center(
              child: Badge(
                child: SvgPicture.asset(
                  AppImages.notification,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),
          actions: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22.r,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22.r),
                      child: Image.asset(
                        AppImages.avatar,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "اهلا بك",
                        style: TextStyle(
                            fontFamily: 'Zain',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        "أ. احمد عبد الله",
                        style: TextStyle(
                            fontFamily: 'Zain',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 120.h);
}
