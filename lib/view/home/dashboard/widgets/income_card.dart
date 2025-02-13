import 'package:assesment_task/domain/entities/teacher_dashboard_entity/teacher_dash_board_entity.dart';
import 'package:assesment_task/view/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

class IncomeCard extends StatelessWidget {
  TeacherDashBoardEntity entity;
  IncomeCard({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343.w,
        height: 127.h,
        padding: REdgeInsets.symmetric(vertical: 13, horizontal: 16),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(22.r)),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الايرادات",
                style: TextStyle(
                    fontFamily: 'Zain',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Text(
                "${entity.walletBallance} ر.س",
                style: TextStyle(
                    fontFamily: 'Zain',
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.info_sharp,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    "  اجمالي الايرادات هذا الشهر",
                    style: TextStyle(
                        fontFamily: 'Zain',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.30),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Row(
                      children: [
                        Text(
                          "0%  ",
                          style: TextStyle(
                              fontFamily: 'Zain',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
