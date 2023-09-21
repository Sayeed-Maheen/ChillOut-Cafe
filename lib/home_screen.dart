import 'package:chillout_cafe/details_screen.dart';
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
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            popularSection(context),
            blackCoffeeSection(),
            winterSpecialSection(),
            cafeSpecialSection(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
    );
  }

  ListView popularSection(context) {
    final List<String> coffeeImages = [
      'assets/images/coffee_1.jpg',
      'assets/images/coffee_2.jpg',
      'assets/images/coffee_3.jpg',
      'assets/images/coffee_4.jpg',
    ];

    final List<String> coffeeCategory = [
      'Black coffee',
      'Winter special',
      'Decaff',
      'Chocolate',
    ];

    final List<String> coffeeName = [
      'ICED AMERICANO',
      'CAPPUCCINO LATTE',
      'CHILL OUT SPECIAL LATTE ',
      'ICED CHOCOLATE',
    ];

    return ListView(
      children: [
        SizedBox(height: 16.h),
        ...List.generate(
          coffeeImages.length,
          (index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
            child: Container(
              padding: REdgeInsets.all(8),
              margin: REdgeInsets.only(left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: colorSecondary,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      coffeeImages[index],
                      width: 50.w,
                      height: 73.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeCategory[index],
                        style: TextStyle(
                          color: colorPrimary,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        coffeeName[index],
                        style: TextStyle(
                          color: colorPrimary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  ListView blackCoffeeSection() {
    final List<String> coffeeImages = [
      'assets/images/coffee_1.jpg',
      'assets/images/coffee_2.jpg',
      'assets/images/coffee_3.jpg',
      'assets/images/coffee_4.jpg',
    ];

    final List<String> coffeeCategory = [
      'Black coffee',
      'Winter special',
      'Decaff',
      'Chocolate',
    ];

    final List<String> coffeeName = [
      'ICED AMERICANO',
      'CAPPUCCINO LATTE',
      'CHILL OUT SPECIAL LATTE ',
      'ICED CHOCOLATE',
    ];

    return ListView(
      children: [
        SizedBox(height: 16.h),
        ...List.generate(
          coffeeImages.length,
          (index) => Container(
            padding: REdgeInsets.all(8),
            margin: REdgeInsets.only(left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              color: colorSecondary,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    coffeeImages[index],
                    width: 50.w,
                    height: 73.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeCategory[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      coffeeName[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  ListView winterSpecialSection() {
    final List<String> coffeeImages = [
      'assets/images/coffee_1.jpg',
      'assets/images/coffee_2.jpg',
      'assets/images/coffee_3.jpg',
      'assets/images/coffee_4.jpg',
    ];

    final List<String> coffeeCategory = [
      'Black coffee',
      'Winter special',
      'Decaff',
      'Chocolate',
    ];

    final List<String> coffeeName = [
      'ICED AMERICANO',
      'CAPPUCCINO LATTE',
      'CHILL OUT SPECIAL LATTE ',
      'ICED CHOCOLATE',
    ];

    return ListView(
      children: [
        SizedBox(height: 16.h),
        ...List.generate(
          coffeeImages.length,
          (index) => Container(
            padding: REdgeInsets.all(8),
            margin: REdgeInsets.only(left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              color: colorSecondary,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    coffeeImages[index],
                    width: 50.w,
                    height: 73.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeCategory[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      coffeeName[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  ListView cafeSpecialSection() {
    final List<String> coffeeImages = [
      'assets/images/coffee_1.jpg',
      'assets/images/coffee_2.jpg',
      'assets/images/coffee_3.jpg',
      'assets/images/coffee_4.jpg',
    ];

    final List<String> coffeeCategory = [
      'Black coffee',
      'Winter special',
      'Decaff',
      'Chocolate',
    ];

    final List<String> coffeeName = [
      'ICED AMERICANO',
      'CAPPUCCINO LATTE',
      'CHILL OUT SPECIAL LATTE ',
      'ICED CHOCOLATE',
    ];

    return ListView(
      children: [
        SizedBox(height: 16.h),
        ...List.generate(
          coffeeImages.length,
          (index) => Container(
            padding: REdgeInsets.all(8),
            margin: REdgeInsets.only(left: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
              color: colorSecondary,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    coffeeImages[index],
                    width: 50.w,
                    height: 73.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeCategory[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      coffeeName[index],
                      style: TextStyle(
                        color: colorPrimary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
