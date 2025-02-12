import 'package:assesment_task/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 12),
            child: Row(
              children: [
                SizedBox(
                  width: 80.w,
                  height: 32.h,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: CircleAvatar(
                          radius: 16.r,
                          backgroundColor: Colors.blue,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Image.asset(
                              AppImages.avatar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: CircleAvatar(
                          radius: 16.r,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Image.asset(
                              AppImages.avatar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: CircleAvatar(
                          radius: 16.r,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.r),
                            child: Image.asset(
                              AppImages.avatar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Color(0xFFD7F3F8),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Text(
                    "جلسة جماعية",
                    style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0F5156),
                    ),
                  ),
                ),
                GestureDetector(
                    child: Icon(
                  Icons.more_vert,
                  size: 23,
                  color: Color(0xFFE6E8F0),
                )),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
            child: Text(
              "ورشة / التفكير خارج الصندوق",
              style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1C1C1E),
              ),
            ),
          ),
          SizedBox(height: 9.h),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFF9F9FD),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r))),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.circle, size: 8, color: Color(0xFF52BD94)),
                Text(
                  "مكتملة",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF52BD94)),
                ),
                Icon(Icons.access_time, size: 16, color: Colors.grey),
                Text(
                  "45 دقيقة",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF636366)),
                ),
                SvgPicture.asset(
                  AppImages.calendar2,
                  // width: 15.w,
                  // height: 15.h,
                ),
                Text(
                  "22 أغسطس / 2024",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF636366)),
                ),
                Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Color(0xFFF5F5F5)),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppImages.arrow,
                      width: 20.w,
                      height: 20.h,
                      matchTextDirection: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
