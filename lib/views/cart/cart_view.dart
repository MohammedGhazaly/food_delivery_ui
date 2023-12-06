import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/user_data.dart';
import 'package:flutter_food_delivery_ui/views/cart/widgets/cart_view_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart (${currentUser.cart.length})"),
      ),
      body: CartViewBody(),
      bottomSheet: Container(
        height: 75.h,
        width: double.infinity,
        decoration:
            BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -1),
            blurRadius: 6.0,
          ),
        ]),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              "CHECKOUT",
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
