import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/custom_text_field.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/recent_orders.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomTextField(),
        ),
        SizedBox(
          height: 24.h,
        ),
        RecentOrders()
      ],
    );
  }
}
