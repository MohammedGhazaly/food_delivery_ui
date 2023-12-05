import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/restaurant_data.dart';
import 'package:flutter_food_delivery_ui/shared_widgets/rating_stars.dart';
import 'package:flutter_food_delivery_ui/views/restaurant/restaurant_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NerbyRestaurants extends StatelessWidget {
  const NerbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: restaurants.map((e) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RestaurantView(
                restaurant: e,
              );
            }));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                width: 1,
                color: Colors.grey[200]!,
              ),
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Hero(
                    tag: e.imageUrl,
                    child: Image.asset(
                      e.imageUrl,
                      width: 125.h,
                      height: 135.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            e.name,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        RatingStars(rating: e.rating),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          e.address,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "0.2 miles away",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
