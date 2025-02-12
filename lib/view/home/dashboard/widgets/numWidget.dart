// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NumWidget extends StatelessWidget {
  String title;
  String num;
  String icon;
  NumWidget(
      {super.key, required this.title, required this.icon, required this.num});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Zain',
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        Row(children: [
          SvgPicture.asset(
            icon,
            width: 35.w,
            height: 35.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            num,
            style: TextStyle(
                fontFamily: 'Zain',
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
        ]),
      ],
    );
  }
}
