// ignore_for_file: must_be_immutable

import 'package:assesment_task/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef Validator = String? Function(String?);

class CustomFormFeild extends StatefulWidget {
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
  State<CustomFormFeild> createState() => _CustomFormFeildState();
}

class _CustomFormFeildState extends State<CustomFormFeild> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextFormField(
          controller: widget.controller,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 18.sp, color: Colors.black),
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLenght,
          validator: widget.validator,
          obscureText: widget.isObscured,
          decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.red),
              counterText: '',
              fillColor: Colors.white,
              filled: true,
              prefixIcon: widget.typePass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isObscured = !widget.isObscured;
                        });
                      },
                      icon: Icon(widget.isObscured
                          ? Icons.visibility
                          : Icons.visibility_off))
                  : null,
              suffixIcon: Image.asset(
                widget.typePass ? AppImages.lock : AppImages.mail,
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
