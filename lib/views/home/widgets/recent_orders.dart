import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/user_data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/recent_order_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "Recent orders",
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 125.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (context, index) {
              return RecentOrderWidget(
                order: currentUser.orders[index],
              );
            },
          ),
        )
      ],
    );
  }
}
