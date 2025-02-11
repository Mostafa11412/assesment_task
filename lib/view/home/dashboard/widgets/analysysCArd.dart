import 'package:assesment_task/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Analysyscard extends StatelessWidget {
  const Analysyscard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 74.h,
      padding: REdgeInsets.symmetric(vertical: 13, horizontal: 27),
      decoration: BoxDecoration(
          color: AppConstants.purble2,
          borderRadius: BorderRadius.circular(20.r)),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            children: [
              Column(
                children: [
                  Text("data"),
                ],
              )
            ],
          )),
    );
  }
}
