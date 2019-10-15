import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopjt/home/home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../feed_screen.dart/feed_screen.dart';
import '../pages/login.dart';

class AuthService{
  static final _auth = FirebaseAuth.instance;
  static final _firestore = Firestore.instance;
  
  


  static void signUpUser (BuildContext context, String name, String email, String password) async{
    
    try{
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,

      );
      FirebaseUser signedInUser = authResult.user;
     

      if(signedInUser != null){

        try{
        _firestore.collection('/users').document(signedInUser.uid).setData({
          'name': name,
          'email': email,
          'profileImageUrl': '',
        });
        }catch(e){
          print(e);
        }

        
         Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
      }


    }catch (e){
      print(e);

    }

  }

  static void logout(BuildContext context){

    _auth.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));

  }

  static void login(BuildContext context, String email, String password) async {
    try{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));    
    }catch(e){
        print(e);
    }    
  }

  static void googleSignup(BuildContext context) async{
    GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);
try {
    await _googleSignIn.signIn();
     Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())); 
  } catch (error) {
    print(error);
  }

  }

}