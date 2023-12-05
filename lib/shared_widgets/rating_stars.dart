import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    String stars = "";
    for (int i = 0; i < rating; i++) {
      stars += "⭐ ";
    }
    return Text(
      stars,
      style: TextStyle(fontSize: 14.sp),
    );
  }
}
