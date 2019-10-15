import 'package:flutter/material.dart';
import '../carousel/carousel.dart';
import '../horizontal_listview/horizontalview.dart';
import '../products/products.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
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