import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentOrderWidget extends StatelessWidget {
  final Order order;
  const RecentOrderWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.grey[200]!,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              order.food.imageUrl,
              // height: 100.h,
              width: 100.h,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  order.food.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  order.restaurant.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  order.date,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 12.w),
            width: 40.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(
                  Icons.add_rounded,
                  size: 26.sp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
