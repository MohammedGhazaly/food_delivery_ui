import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/shared_widgets/rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantDetailsSection extends StatelessWidget {
  const RestaurantDetailsSection({
    super.key,
    required this.restaurant,
  });

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  restaurant.name,
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Text(
                  "0.2 miles away",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 14.sp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          RatingStars(rating: restaurant.rating),
          SizedBox(
            height: 4.h,
          ),
          Text(restaurant.address),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                onPressed: () {},
                child: Text("Reviews"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                onPressed: () {},
                child: Text("Contacts"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
