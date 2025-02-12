import 'package:assesment_task/view/home/dashboard/widgets/analysysCArd.dart';
import 'package:assesment_task/view/home/dashboard/widgets/income_card.dart';
import 'package:assesment_task/view/home/dashboard/widgets/next_sessions/next_sessions_part.dart';
import 'package:assesment_task/view/home/dashboard/widgets/notfications_part/notifications_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: IncomeCard(),
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Analysiscard(),
            ),
            SizedBox(
              height: 27.h,
            ),
            NextSessionsPart(),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: NotificationsPart(),
            ),
          ],
        ),
      ),
    );
  }
}
