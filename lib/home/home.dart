import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../sidebar/sidebar.dart';
import '../searchbar/searchbar.dart';
import '../shoppingcart/shoppingcart.dart';
import '../carousel/carousel.dart';
import '../horizontal_listview/horizontalview.dart';
import '../products/products.dart';
import './home_screen.dart';
import '../pages/cart.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currenTab =0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
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
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _currenTab,
        onTap: (int index){
          setState(() {
           _currenTab = index; 
          });

        },
        activeColor: Colors.black,
        items: [
          BottomNavigationBarItem(            
          icon: Icon
          (Icons.home, 
          size: 32.0,)
        ),

         BottomNavigationBarItem(
          icon: Icon
          (Icons.search, 
          size: 32.0,)
        ),

         BottomNavigationBarItem(
          icon: Icon
          (Icons.photo_camera, 
          size: 32.0,)
        ),

         BottomNavigationBarItem(
          icon: Icon
          (Icons.notifications, 
          size: 32.0,)
        ),

         BottomNavigationBarItem(
          icon: Icon
          (Icons.account_circle, 
          size: 32.0,)
        ),
        ],
      ),
      drawer: 
          SideBar(),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          Cart(),
          
        ],
        onPageChanged: (int index){
          setState(() {
           _currenTab = index; 
          });
          _pageController.animateToPage(
            index, 
            duration: Duration(microseconds: 100), 
            curve: Curves.easeIn,
            );
        },
      ),
      /* ListView(
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
      ),*/

    );
  }
}