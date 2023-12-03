import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Serch food or restaurant",
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14.sp),
        prefixIcon: Icon(
          Icons.search,
          size: 32.sp,
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.clear),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16.w),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.r)),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(50.r)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 1),
        ),
      ),
    );
  }
}
