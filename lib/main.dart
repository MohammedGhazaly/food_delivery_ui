import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/test.dart';
import 'package:flutter_food_delivery_ui/views/home/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white,
              centerTitle: true,
            ),
            primaryColor: Colors.deepOrangeAccent,
            scaffoldBackgroundColor: Colors.grey[50],
            useMaterial3: true,
          ),
          title: 'Food delivery app',
          initialRoute: HomeView.routeName,
          routes: {HomeView.routeName: (context) => const HomeView()},
        );
      },
    );
  }
}
