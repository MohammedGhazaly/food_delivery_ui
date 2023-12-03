import 'package:flutter_food_delivery_ui/data/food_data.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';

final restaurant0 = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  name: 'Restaurant 0',
  address: '200 Main St, New York, NY',
  rating: 5,
  menu: [burrito, steak, pasta, ramen, pancakes, burger, pizza, salmon],
);
final restaurant1 = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpg',
  name: 'Restaurant 1',
  address: '200 Main St, New York, NY',
  rating: 4,
  menu: [steak, pasta, ramen, pancakes, burger, pizza],
);
final restaurant2 = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpg',
  name: 'Restaurant 2',
  address: '200 Main St, New York, NY',
  rating: 4,
  menu: [steak, pasta, pancakes, burger, pizza, salmon],
);
final restaurant3 = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'Restaurant 3',
  address: '200 Main St, New York, NY',
  rating: 2,
  menu: [burrito, steak, burger, pizza, salmon],
);
final restaurant4 = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'Restaurant 4',
  address: '200 Main St, New York, NY',
  rating: 3,
  menu: [burrito, ramen, pancakes, salmon],
);

final List<Restaurant> restaurants = [
  restaurant0,
  restaurant1,
  restaurant2,
  restaurant3,
  restaurant4,
];
