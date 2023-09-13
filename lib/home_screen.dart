import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        flexibleSpace: Container(
          color: colorSecondary, // Set a fixed color here
        ),
        title: Text(
          'Good day, Sayeed',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: colorPrimary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: colorPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
