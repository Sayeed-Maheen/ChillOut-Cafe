import 'package:chillout_cafe/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const MyButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 333.w,
      height: 47.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorPrimary,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(40.r), // Adjust the radius as needed
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(color: colorSecondaryLight),
        ),
      ),
    );
  }
}
