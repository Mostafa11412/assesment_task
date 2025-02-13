// ignore_for_file: must_be_immutable

import 'package:assesment_task/Di/di.dart';
import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/core/utils/app_images.dart';
import 'package:assesment_task/view/home/calendar/calendar.dart';
import 'package:assesment_task/view/home/appbar/appbar.dart';
import 'package:assesment_task/view/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:assesment_task/view/home/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  int body = 0;

  HomeScreen({super.key, required this.body});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> bodies = [Dashboard()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardCubit>()..getDashBoard(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: CustomAppBar(),
        body: bodies[widget.body],
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BottomNavigationBar(
        iconSize: 44,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
            fontFamily: 'Zain', fontSize: 10, fontWeight: FontWeight.w800),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'Zain', fontSize: 10, fontWeight: FontWeight.w800),
        onTap: (index) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(
                body: 0,
              ),
            ),
            (route) => false,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.home),
            activeIcon: SvgPicture.asset(AppImages.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.clipboard),
            activeIcon: SvgPicture.asset(AppImages.clipboard),
            label: "الورشات",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.chart),
            activeIcon: SvgPicture.asset(AppImages.chart),
            label: "الإحصائيات",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImages.settings),
            activeIcon: SvgPicture.asset(AppImages.settings),
            label: "الإعدادات",
          ),
        ],
      ),
    );
  }
}
