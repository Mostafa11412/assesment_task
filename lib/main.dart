import 'package:assesment_task/Di/di.dart';
import 'package:assesment_task/core/api/api_manager.dart';
import 'package:assesment_task/core/utils/myobserver.dart';
import 'package:assesment_task/view/home/home_screen.dart';
import 'package:assesment_task/view/login/login_screen.dart';
import 'package:assesment_task/view/splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  ApiManager.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
