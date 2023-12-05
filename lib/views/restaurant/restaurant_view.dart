import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/food.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/views/restaurant/widgets/restaurant_details_section.dart';
import 'package:flutter_food_delivery_ui/views/restaurant/widgets/restaurant_hero_section.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantView extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantView({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            RestaurantHeroSection(
              restaurant: restaurant,
            ),

            // Column()
            SizedBox(
              height: 12.h,
            ),
            RestaurantDetailsSection(restaurant: restaurant),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Menu",
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GridView.count(
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              padding: EdgeInsets.all(24.w),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(restaurant.menu.length, (index) {
                return MenutItem(
                  food: restaurant.menu[index],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class MenutItem extends StatelessWidget {
  final Food food;
  const MenutItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Image.asset(
        //   food.imageUrl,
        //   width: 175.h,
        //   height: 175.h,
        //   fit: BoxFit.cover,
        // )
        Container(
          width: 175.h,
          height: 175.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.black,
            //     Colors.black,
            //   ],
            // ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                food.imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 175.h,
          height: 175.h,
          decoration: BoxDecoration(
            // color: Colors.black.withOpacity(0.25),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.35),
                Colors.black87.withOpacity(0.35),
                Colors.black54.withOpacity(0.35),
                Colors.black38.withOpacity(0.35),
              ],
            ),
            borderRadius: BorderRadius.circular(
              16.r,
            ),
          ),
        ),
        Positioned(
          top: 175.h / 4,
          child: Column(
            children: [
              AutoSizeText(
                food.name,
                minFontSize: 12,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$${food.price}",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 5,
            right: 5,
            child: Container(
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
            ))
      ],
    );
  }
}
