import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './feed_screen.dart/feed_screen.dart';
import './home/home.dart';
import './pages/login.dart';
import './pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget _getScreenId(){
    return StreamBuilder<FirebaseUser>(stream: FirebaseAuth.instance.onAuthStateChanged,
    builder: (BuildContext context, snapsshot){
      if (snapsshot.hasData){
        return Home();
      
      }else{
        return LoginScreen();
        
      }
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     // home: new Home(),
      
     home:  _getScreenId(),
    );
  }
}