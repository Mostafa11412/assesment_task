// ignore_for_file: must_be_immutable

import 'package:assesment_task/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef Validator = String? Function(String?);

class CustomFormFeild extends StatelessWidget {
  bool typePass;
  TextEditingController? controller;
  TextInputType? keyboardType;
  int maxLenght;
  bool isObscured;
  Validator? validator;

  CustomFormFeild({
    super.key,
    required this.typePass,
    this.controller,
    this.keyboardType,
    this.maxLenght = 100,
    this.isObscured = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          controller: controller,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 18.sp, color: Colors.black),
          keyboardType: keyboardType,
          maxLength: maxLenght,
          validator: validator,
          obscureText: typePass,
          decoration: InputDecoration(
              errorStyle: TextStyle(fontSize: 15.sp, color: Colors.red),
              counterText: '',
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Image.asset(
                typePass ? AppImages.lock : AppImages.mail,
                width: 20.w,
                height: 20.h,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
              errorBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r))),
        ),
      ),
    );
  }
}
