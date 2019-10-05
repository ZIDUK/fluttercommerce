import 'package:flutter/material.dart';
class SingleCartProduct extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  SingleCartProduct({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
  });

 
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, width: 100.0, height: 80.0),
        title: Text(cart_prod_name),
        subtitle: Column(
          children: <Widget>[
            //ROW INSIDE THE COLUMN
            Row(
              children: <Widget>[
                //Product Size 

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
                ),

                //Product Color
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(cart_prod_color, style: TextStyle(color: Colors.red),),
                ),

                //Product Price

                
              ],
            ),
            Container(
                  alignment: Alignment.topLeft,
                  child: Text("\$${cart_prod_price}", 
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      ),
                ),  
                

          ],
        ),
       /* trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){}),
            Text("$cart_prod_qty"),
            IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){}),
          ],
        ),*/
      ),
    );
  }
}