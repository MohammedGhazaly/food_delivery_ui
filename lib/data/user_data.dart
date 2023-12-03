import 'package:flutter_food_delivery_ui/data/food_data.dart';
import 'package:flutter_food_delivery_ui/data/restaurant_data.dart';
import 'package:flutter_food_delivery_ui/models/order.dart';
import 'package:flutter_food_delivery_ui/models/user.dart';

// Food

// Restaurants

// User
final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: steak,
      restaurant: restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: ramen,
      restaurant: restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: burrito,
      restaurant: restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: salmon,
      restaurant: restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: pancakes,
      restaurant: restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: burger,
      restaurant: restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: pasta,
      restaurant: restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: salmon,
      restaurant: restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: pancakes,
      restaurant: restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: burrito,
      restaurant: restaurant1,
      quantity: 2,
    ),
  ],
);
