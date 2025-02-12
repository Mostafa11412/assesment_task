import 'package:assesment_task/Di/di.dart';
import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/core/utils/app_images.dart';
import 'package:assesment_task/core/utils/constants.dart';
import 'package:assesment_task/global_widgets/app_icon.dart';
import 'package:assesment_task/global_widgets/custom_button.dart';
import 'package:assesment_task/global_widgets/text_form_feild.dart';
import 'package:assesment_task/view/login/Cubit/login_cubit.dart';
import 'package:assesment_task/view/login/widgets/custom_divider.dart';
import 'package:assesment_task/view/onbaording/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailC;
  late TextEditingController passwordC;
  final _formKey = GlobalKey<FormState>(); // Form Key

  @override
  void initState() {
    emailC = TextEditingController();
    passwordC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: REdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "دخول كزائر",
                              style: TextStyle(
                                  fontFamily: 'Zain',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.buttonC,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.buttonC),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    AppIcon(
                      d: true,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "مرحبًا بك👋 قم بتسجيل الدخول",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomFormFeild(
                      controller: emailC,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (!AppConstants.email.hasMatch(value!)) {
                          return "Please Write Valid Email";
                        }
                        return null;
                      },
                      typePass: false,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomFormFeild(
                      typePass: true,
                      controller: passwordC,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (passwordC.text.isEmpty) {
                          return "Please Write Valid Password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "هل نسيت كلمة المرور ؟",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                      if (state is LoginErrorState) {
                        Fluttertoast.showToast(
                            msg: state.errorMessage,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                      if (state is LoginSuccessState) {
                        Fluttertoast.showToast(
                            msg: state.successMessage,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreen(),
                            ));
                      }
                    }, builder: (context, state) {
                      if (state is LoginLoadingState) {
                        return CircularProgressIndicator(
                          color: Colors.white,
                        );
                      }
                      return CustomButton(
                        textColor: Colors.white,
                        buttonColor: AppColors.buttonC,
                        buttonTitle: "دخول",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<LoginCubit>(context)
                                .signIn(emailC.text, passwordC.text);
                          }
                        },
                      );
                    }),
                    SizedBox(
                      height: 18.h,
                    ),
                    CustomDivider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomButton(
                      asset: AppImages.apple,
                      buttonColor: Colors.white,
                      buttonTitle: "تسجيل بحساب ابل",
                      onPressed: () {},
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomButton(
                      asset: AppImages.google,
                      buttonColor: Colors.white,
                      buttonTitle: "تسجيل بحساب غوغل",
                      onPressed: () {},
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " تسجيل حساب جديد",
                          style: TextStyle(
                              fontFamily: 'Zain',
                              fontSize: 14,
                              color: AppColors.buttonC,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "  ليس لديك حساب ؟",
                          style: TextStyle(
                              fontFamily: 'Zain',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "بتسجيل الدخول، أوافق على شروط الخدمة وإرشادات المجتمع وقرأت سياسة الخصوصية.",
                      style: TextStyle(
                          fontFamily: 'Zain',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
