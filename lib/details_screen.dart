import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false; // Initialize the state of the icon
  int selectedContainerIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Column(
        children: [
          Image.asset(
            "assets/images/details_image.jpg",
            height: 241.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: ListView(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Winter \nspecial',
                      style: TextStyle(
                          color: colorSecondary,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700,
                          height: 1.h),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite; // Toggle the icon state
                            });
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite_outlined
                                : Icons.favorite_border,
                            size: 25.h,
                          ),
                          color: colorSecondary,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            size: 25.h,
                          ),
                          color: colorSecondary,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  'CAPPUCCINO LATTE',
                  style: TextStyle(
                    color: colorSecondary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Complex, yet smooth flavor made to order.',
                  style: TextStyle(
                    color: colorSecondary,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: colorOrange,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      '4.5',
                      style: TextStyle(
                        color: colorOrange,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      '(10k)',
                      style: TextStyle(
                        color: colorSecondary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  'Size (ml)',
                  style: TextStyle(
                    color: colorSecondary,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Expanded(child: buildContainer(0)),
                    SizedBox(width: 12.w),
                    Expanded(flex: 1, child: buildContainer(1)),
                    SizedBox(width: 12.w),
                    Expanded(flex: 1, child: buildContainer(2)),
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  selectedContainerIndex == 0
                      ? '£ 3.95'
                      : selectedContainerIndex == 1
                          ? '£ 4.95'
                          : selectedContainerIndex == 2
                              ? '£ 5.95'
                              : '£ 0.00',
                  style: TextStyle(
                    color: colorSecondary,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContainer(int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(8.r),
      onTap: () {
        setState(() {
          if (selectedContainerIndex == index) {
            // If the same container is tapped again, unselect it
            selectedContainerIndex;
          } else {
            selectedContainerIndex = index;
          }
        });
      },
      child: Container(
        width: 100.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: colorPrimaryFade,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: selectedContainerIndex == index
                ? colorSecondary
                : colorPrimaryFade,
            width: selectedContainerIndex == index ? 1.5.w : 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.coffee_rounded,
              color: colorSecondary,
              size: index == 0
                  ? 20.h
                  : index == 1
                      ? 22.h
                      : index == 2
                          ? 25.h
                          : 0.h,
            ),
            SizedBox(width: 6.w),
            Text(
              index == 0
                  ? '250'
                  : index == 1
                      ? '350'
                      : index == 2
                          ? '450'
                          : "0",
              style: TextStyle(
                color: colorSecondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
