import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/global_widgets/custom_button.dart';
import 'package:assesment_task/view/home/home_screen.dart';
import 'package:assesment_task/view/login/login_screen.dart';
import 'package:assesment_task/view/onbaording/first_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int totalPages = 3;

  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        PageView(
          controller: pageController,
          children: [FirstScreen(), FirstScreen(), FirstScreen()],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 27),
          child: CustomButton(
              textColor: Colors.white,
              buttonColor: AppColors.buttonC,
              buttonTitle: "التالي",
              onPressed: () {
                if (pageController.page?.round() == totalPages - 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          body: 0,
                        ),
                      ));
                } else {
                  pageController.nextPage(
                    duration: Durations.long1,
                    curve: Curves.easeIn,
                  );
                }
              }),
        )
      ]),
    );
  }
}
