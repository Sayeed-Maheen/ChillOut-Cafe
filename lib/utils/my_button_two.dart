import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonTwo extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const MyButtonTwo({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 333.w,
      height: 47.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorSecondaryLightest,
          foregroundColor: colorSecondaryLight,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(40.r), // Adjust the radius as needed
            side: BorderSide(
              color: colorPrimary, // Border color
              width: 1.w, // Border width
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(color: colorPrimary),
        ),
      ),
    );
  }
}
