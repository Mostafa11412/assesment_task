import 'package:assesment_task/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationCard extends StatelessWidget {
  final NotificationType type;
  const NotificationCard({super.key, required this.type});

  // @override
  @override
  Widget build(BuildContext context) {
    final (color, icon, text) = _getNotificationData(type);

    return Container(
      margin: REdgeInsets.symmetric(vertical: 11),
      padding: REdgeInsets.symmetric(vertical: 11, horizontal: 12),

      decoration: BoxDecoration(
          color: color.withOpacity(.07),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: color)),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 50.w,
            height: 50.h,
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Zain',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.w,
                ),
                Row(
                  children: [
                    Text(
                      "منذ 12 دقيقة",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      AppImages.arrow,
                      colorFilter:
                          ColorFilter.mode(Colors.black45, BlendMode.srcIn),
                      width: 20.w,
                      height: 20.h,
                      matchTextDirection: true,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      //   ListTile(
      //     leading: SvgPicture.asset(
      //       icon,
      //       width: 50.w,
      //       height: 50.h,
      //     ),
      //     title: Text(
      //       text,
      //       style: TextStyle(
      //           fontFamily: 'Zain', fontSize: 14.sp, fontWeight: FontWeight.w700),
      //     ),
      //     subtitle: Row(
      //       children: [
      //         Text(
      //           "منذ 12 دقيقة",
      //           style: TextStyle(
      //               fontFamily: 'Zain',
      //               fontSize: 14.sp,
      //               fontWeight: FontWeight.w400),
      //         ),
      //         Spacer(),
      //         SvgPicture.asset(
      //           AppImages.arrow,
      //           colorFilter: ColorFilter.mode(Colors.black45, BlendMode.srcIn),
      //           width: 20.w,
      //           height: 20.h,
      //           matchTextDirection: true,
      //         ),
      //       ],
      //     ),
      //   ),
      // );
    );
  }
}

(Color, String, String) _getNotificationData(NotificationType type) {
  switch (type) {
    case NotificationType.booking:
      return (
        const Color(0xFF3366FF),
        AppImages.notificationCalendar,
        "تم حجز مقعد جديد في ورشة أساسيات تعلم الرسم من قبل الطالبة نور علي"
      );
    case NotificationType.rating:
      return (
        const Color(0xFFFFB020),
        AppImages.notificationRate,
        "الطالب ليلى حسن أضاف تقييمًا جديدًا لورشة تصميم تجربة المستخدم"
      );
    case NotificationType.join:
      return (
        const Color(0xFFFFC7DC),
        AppImages.notificationJoin,
        "رنا مصطفى طلبت الانضمام إلى ورشة الذكاء الاصطناعي"
      );
  }
}

enum NotificationType { booking, rating, join }
