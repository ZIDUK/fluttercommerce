import 'package:flutter/material.dart';
import 'package:fluttershopjt/pages/product_details.dart';
import '../pages/product_details.dart';

class SingleProduct extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  
  SingleProduct({
    this.product_name, 
    this.prod_picture, 
    this.prod_old_price,
    this.prod_price
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: Text("Hero 1"), 
          child: Material(
            child: InkWell(
              onTap: ()=>Navigator.push(context,
               MaterialPageRoute(builder: (context) => ProductDetails(
                product_detail_name: product_name,
                product_detail_new_price: prod_price,
                product_detail_old: prod_old_price,
                product_detail_picture: prod_picture,

               ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    ],
                  ) ,
                ),
                child: Image.asset(prod_picture,
                fit: BoxFit.cover) ,
              ),
            ),
          ),
          
          ),
      ),
    );
  }
}