import 'package:assesment_task/core/app_constants.dart';
import 'package:assesment_task/core/app_images.dart';
import 'package:assesment_task/view/home/dashboard/appbar/appbar.dart';
import 'package:assesment_task/view/home/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      appBar: CustomAppBar(),
      body: Dashboard(),
      bottomNavigationBar: _buildBottomNavBar(),
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
          setState(() {
            _selectedIndex = index;
          });
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
