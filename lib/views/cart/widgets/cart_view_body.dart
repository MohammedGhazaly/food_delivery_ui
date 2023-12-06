import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/user_data.dart';
import 'package:flutter_food_delivery_ui/views/cart/widgets/cart_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double total = 0;

    double totalCost = 0;
    return ListView.separated(
        itemBuilder: (context, index) {
          if (index < currentUser.cart.length) {
            totalCost += currentUser.cart[index].quantity *
                currentUser.cart[index].food.price;
            return CartItem(
              order: currentUser.cart[index],
            );
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Estimated delevity time",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "25 min",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total cost",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      totalCost.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 75.h,
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
        itemCount: currentUser.cart.length + 1);
  }
}
