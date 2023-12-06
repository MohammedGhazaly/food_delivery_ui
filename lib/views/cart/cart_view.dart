import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/user_data.dart';
import 'package:flutter_food_delivery_ui/views/cart/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart (${currentUser.cart.length})"),
      ),
      body: CartViewBody(),
    );
  }
}
