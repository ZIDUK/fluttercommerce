import 'package:flutter/material.dart';
import '../products/singlecartproduct.dart';


class CartProducts extends StatefulWidget {  

  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_on_the_cart = [
    {
      "name": "Pulsera Santos",
      "picture": "images/PulseraSantos.jpg",
      "old_price": 120,
      "price": 80,
      "size" : "M",
      "color": "Red",
      "quantity": 2,

    },
    {
      "name": "Rosario Onyx",
      "picture": "images/RosarioOnyx.jpg",
      "old_price": 120,
      "price": 80,
      "size" : "M",
      "color": "Red",
      "quantity": 2,

    },
    {
      "name": "San Benito",
      "picture": "images/cadenaSB.jpg",
      "old_price": 100,
      "price": 50,
      "size" : "M",
      "color": "Red",
      "quantity": 2,

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView.builder(
         itemCount: 3,
         itemBuilder: (context, index){
           return SingleCartProduct(
             cart_prod_name: products_on_the_cart[index]["name"],
             cart_prod_picture: products_on_the_cart[index]["picture"],
             cart_prod_price: products_on_the_cart[index]["price"],
             cart_prod_size: products_on_the_cart[index]["size"],
             cart_prod_color: products_on_the_cart[index]["color"],
             cart_prod_qty: products_on_the_cart[index]["quantity"],
           );
         },
       ),
    );
  }
}