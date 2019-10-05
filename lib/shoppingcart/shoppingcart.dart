import 'package:flutter/material.dart';
import 'package:fluttershopjt/pages/cart.dart';
import '../pages/cart.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
      },
    );
  }
}
