import 'package:flutter/material.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';
import '../home/home.dart';
import '../pages/similar_products.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old,
    this.product_detail_picture
    });
  
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  
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
          child: Text('Flutter Layout Product Detail')),    
        actions: <Widget>[
          SearchBar(),
          ShoppingCart(),
        ]    
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(              
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("\$${widget.product_detail_old}",
                        style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough,
                        ),
                        ),
                       
                      ),
                      Expanded(
                        child: Text("\$${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                        
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // -----------------First Button--------------
          Row(
            children: <Widget>[
              //----- Size Button--------
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Size"),
                      content: Text("Choose the size"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

               //----- Color Button--------
              Expanded(
                child: MaterialButton(
                   onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Color"),
                      content: Text("Choose the color"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),

                //----- Quantity Button--------
              Expanded(
                child: MaterialButton(
                   onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Quantity"),
                      content: Text("Choose the Quantity"),
                      actions: <Widget>[
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: Text("Close"),
                        )
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
                ),
              ),
            ],
          ),

            //---------Second button
           Row(
            children: <Widget>[
              //----- Size Button--------
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.2,
                child: Text("Buy Now")

                ),
              ),

              IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red, onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite_border), color: Colors.red, onPressed: (){}),


            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
           Divider(),
           Row(
             children: <Widget>[
               Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child: Text("Product Name", style: TextStyle(color: Colors.grey),),),
               Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),),
             ],
           ),

           Row(
             children: <Widget>[
               Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child: Text("Product Brand", style: TextStyle(color: Colors.grey),),),
               Padding(padding: EdgeInsets.all(5.0),
              child: Text("Brand X"),),
             ],
           ),

           Row(
             children: <Widget>[
               Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child: Text("Product Condition", style: TextStyle(color: Colors.grey),),),
               Padding(padding: EdgeInsets.all(5.0),
              child: Text("Product Condition"),),
             ],
           ),
           Divider(),
           Padding(
             padding: EdgeInsets.all(8.0),
           child: Text("Similar Products"),
           ),
           //SIMILAR PRODUCTS------------
           Container(
             height: 360.0,
             child: SimilarProducts(),
           ),
        ],
      ),
    );
  }
}