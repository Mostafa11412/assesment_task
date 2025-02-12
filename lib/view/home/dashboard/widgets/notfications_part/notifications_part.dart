import 'package:assesment_task/view/home/dashboard/widgets/notfications_part/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsPart extends StatelessWidget {
  const NotificationsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "الاشعارات",
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
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
            NotificationCard(
              type: NotificationType.booking,
            ),
            NotificationCard(
              type: NotificationType.rating,
            ),
            NotificationCard(
              type: NotificationType.join,
            ),
          ],
        ),
      ),
    );
  }
}
