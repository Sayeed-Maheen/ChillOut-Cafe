import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:chillout_cafe/utils/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'ChillOut Cafe',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorPrimary,
                fontSize: 36.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              'Enjoy the drink coffee .',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colorPrimary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 80.h),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: MyButton(
                buttonText: 'SHOP NOW',
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
              ),
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }
}
