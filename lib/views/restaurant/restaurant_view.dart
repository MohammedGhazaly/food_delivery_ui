import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/shared_widgets/rating_stars.dart';
import 'package:flutter_food_delivery_ui/views/restaurant/widgets/restaurant_details_section.dart';
import 'package:flutter_food_delivery_ui/views/restaurant/widgets/restaurant_hero_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantView extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantView({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RestaurantHeroSection(
            restaurant: restaurant,
          ),

          // Column()
          SizedBox(
            height: 12.h,
          ),
          RestaurantDetailsSection(restaurant: restaurant)
        ],
      ),
    );
  }
}
