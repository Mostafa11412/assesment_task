import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/core/utils/app_images.dart';
import 'package:assesment_task/view/home/dashboard/widgets/numWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Analysiscard extends StatelessWidget {
  const Analysiscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 85.h,
      padding: REdgeInsets.symmetric(vertical: 13, horizontal: 27),
      decoration: BoxDecoration(
          color: AppColors.purble2, borderRadius: BorderRadius.circular(20.r)),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumWidget(title: "الورشات", icon: AppImages.calendar, num: "12"),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
              ),
              NumWidget(title: "الطلاب", icon: AppImages.students, num: "40"),
              VerticalDivider(
                indent: 10,
                endIndent: 10,
              ),
              NumWidget(
                  title: "التقييم العام ", icon: AppImages.rate, num: "4.5"),
            ],
          )),
    );
  }
}
