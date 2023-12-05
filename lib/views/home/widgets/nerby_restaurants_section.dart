import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/nerby_restaurants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NerbayRestaurantsSection extends StatelessWidget {
  const NerbayRestaurantsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "Nerbay restaurants",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        NerbyRestaurants()
      ],
    );
  }
}
