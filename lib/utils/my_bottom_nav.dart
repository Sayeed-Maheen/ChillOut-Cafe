import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_screen.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  _MyBottomNavState createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: [
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/images/home.png",
              height: 20.h,
              width: 20.w,
            ),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/images/cart.png",
              height: 20.h,
              width: 20.w,
            ),
            label: 'Cart',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/images/fav.png",
              height: 20.h,
              width: 20.w,
            ),
            label: 'Favourite',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/images/profile.png",
              height: 20.h,
              width: 20.w,
            ),
            label: 'Profile',
          ),
        ],
        color: colorSecondary,
        buttonBackgroundColor: colorSecondary,
        backgroundColor: colorPrimary,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
        height: 55.h,
      ),
      body: _screens[_page],
    );
  }
}
