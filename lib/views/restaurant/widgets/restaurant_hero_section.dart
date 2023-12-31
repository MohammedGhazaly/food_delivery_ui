import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantHeroSection extends StatelessWidget {
  const RestaurantHeroSection({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: restaurant.imageUrl,
          child: Image.asset(
            restaurant.imageUrl,
            height: 250.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 32.sp,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 32.sp,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
