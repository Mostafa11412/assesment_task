import 'package:assesment_task/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  bool d;
  AppIcon({super.key, required this.d});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      d ? AppImages.appIconD : AppImages.appIcon,
      width: 122.w,
      height: 55.h,
    );
  }
}
