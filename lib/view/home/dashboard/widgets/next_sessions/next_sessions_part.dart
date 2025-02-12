import 'package:assesment_task/core/app_constants.dart';
import 'package:assesment_task/view/home/dashboard/widgets/next_sessions/nex_sessions_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextSessionsPart extends StatelessWidget {
  const NextSessionsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: Color(0xFFF9F9FD),
        height: 385.h,
        width: double.infinity,
        child: Column(children: [
          Row(
            children: [
              Text(
                "الجلسات القادمة ",
                style: TextStyle(
                    fontFamily: 'Zain',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                    color: Color(0xFFF5FBFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppConstants.buttonC)),
                child: Text(
                  "04",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: AppConstants.buttonC),
                ),
              ),
              Spacer(),
              GestureDetector(
                child: Row(
                  children: [
                    Text(
                      "المزيد",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1F2937)),
                    ),
                    Directionality(
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          size: 15,
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          SessionCard(),
          SessionCard(),
        ]),
      ),
    );
  }
}
