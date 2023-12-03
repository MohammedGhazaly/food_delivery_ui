import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/user_data.dart';
import 'package:flutter_food_delivery_ui/views/home/widgets/home_view_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  static String routeName = "home-view";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Delivery"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle_rounded,
            size: 32.sp,
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Text(
              "Cart (${currentUser.cart.length})",
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
