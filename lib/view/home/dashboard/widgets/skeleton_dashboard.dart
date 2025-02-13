import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DashboardSkeleton extends StatelessWidget {
  const DashboardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.purble1,
      highlightColor: Colors.grey[500]!,
      period: Duration(seconds: 2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 343.w,
                height: 127.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                ),
              ),
            ),
            SizedBox(height: 13.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 343.w,
                height: 127.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                ),
              ),
            ),
            SizedBox(height: 27.h),
            Container(
              padding: REdgeInsets.symmetric(horizontal: 16),
              width: 343.w,
              height: 180.h,
              color: Colors.white,
            ),
            SizedBox(height: 18.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 343.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
