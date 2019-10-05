import 'package:flutter/material.dart';
import '../horizontal_listview/categoryhorview.dart';

class HorizontalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         CategoryHorView(
           image_location: 'images/tshirt.png',
           image_caption: 'shirt',
         ),
         CategoryHorView(
           image_location: 'images/coffee-cup.png',
           image_caption: 'coffe',
         ),
         CategoryHorView(
           image_location: 'images/footwear.png',
           image_caption: 'shoes',
         ),
         CategoryHorView(
           image_location: 'images/store.png',
           image_caption: 'store',
         )
        ],
      ),
    );
  }
}