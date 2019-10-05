import 'package:flutter/material.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';
import '../home/home.dart';
import '../pages/cartproducts.dart';

class Cart extends StatefulWidget {
 
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0.1,
        backgroundColor: Color.fromRGBO(234, 29, 99, 1),
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
          },
          child: Text('Cart')),    
        actions: <Widget>[
          SearchBar(),
          
        ]    
      ),

      body: CartProducts(),

      bottomNavigationBar: Container(
        color:Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$230"),
              ),
            ),

            Expanded(
              child: MaterialButton(
                onPressed: (){

                },
                child: Text("Checkout", style: TextStyle(color: Colors.white),),
                color: Colors.red,

              ),             
              
              )
          ],
        ),
      ),

    );
  }
}