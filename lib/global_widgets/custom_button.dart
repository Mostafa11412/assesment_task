import 'package:assesment_task/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? asset;
  String buttonTitle;
  Color textColor;
  Color buttonColor;
  void Function() onPressed;
  CustomButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonColor,
      required this.onPressed,
      required this.textColor,
      this.asset});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 327.w,
        height: 56.h,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r))),
            child: asset != null
                ? Row(
                    children: [
                      if (asset != null) SvgPicture.asset(asset!),
                      if (asset != null)
                        SizedBox(
                          width: 67.w,
                        ),
                      Text(
                        buttonTitle,
                        style: TextStyle(
                            fontFamily: 'Zain',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: textColor),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                : Text(
                    buttonTitle,
                    style: TextStyle(
                        fontFamily: 'Zain',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: textColor),
                    textAlign: TextAlign.center,
                  ),
          ),
        ));
  }
}
