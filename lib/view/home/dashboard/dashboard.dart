import 'package:assesment_task/view/home/dashboard/widgets/analysysCArd.dart';
import 'package:assesment_task/view/home/dashboard/widgets/income_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r), topRight: Radius.circular(40.r))),
      child: Column(
        children: [
          IncomeCard(),
          SizedBox(
            height: 13.h,
          ),
          Analysyscard()
        ],
      ),
    );
  }
}
