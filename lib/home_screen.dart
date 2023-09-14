import 'package:chillout_cafe/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.h),
            child: Container(
              alignment: Alignment.centerLeft,
              // height: 100.h,
              color: colorSecondary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'What would you like\nto drink today?',
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 16.w),
                        TabBar(
                          isScrollable: true,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: colorPrimary),
                          unselectedLabelColor: colorPrimary,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12.sp),
                          labelColor: colorSecondary,
                          tabs: const [
                            Tab(text: 'Popular'),
                            Tab(text: 'Black coffee'),
                            Tab(text: 'Winter special'),
                            Tab(text: 'Cafe special'),
                          ],
                        ),
                        SizedBox(width: 16.w),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
