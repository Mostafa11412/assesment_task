import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeCard extends StatelessWidget {
  const IncomeCard({super.key});

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
          // color: AppConstants.purble1,
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
              "1000.0 ر.س",
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
                        "30%  ",
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
      ),
    );
  }
}
