import 'package:assesment_task/global_widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 27),
      child: Column(
        children: [
          AppIcon(
            d: false,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "أكاديمية فريد لجيل سوي وسعيد",
            style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 24.sp,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "أساليب تعليم مبتكرة تجمع بين الخبرة العالمية والتقنيات الحديثة",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Zain',
              fontSize: 14.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
