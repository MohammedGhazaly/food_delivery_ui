import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/restaurant_data.dart';
import 'package:flutter_food_delivery_ui/shared_widgets/rating_stars.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/custom_text_field.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/nerby_restaurants.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/nerby_restaurants_section.dart';
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
        RecentOrders(),
        SizedBox(
          height: 16.h,
        ),
        NerbayRestaurantsSection(),
      ],
    );
  }
}
