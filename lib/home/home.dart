import 'package:flutter/material.dart';
import '../sidebar/sidebar.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';
import '../carousel/carousel.dart';
import '../horizontal_listview/horizontalview.dart';
import '../products/products.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
       appBar: AppBar(
         elevation: 0.1,
        backgroundColor: Color.fromRGBO(234, 29, 99, 1),
        title: Text('Flutter Layout home'),    
        actions: <Widget>[
          SearchBar(),
          ShoppingCart(),
        ]    
      ),
      drawer: 
          SideBar(),
      body: ListView(
        children: <Widget>[
          CarouselJT(),
          Padding(padding: const EdgeInsets.all(8.0),          
          child: Text('Categories'),),

          //Horizontal ListView
          HorizontalView(),

          Padding(padding: const EdgeInsets.all(20.0),          
          child: Text('Recent Products'),),

          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),

    );
  }
}