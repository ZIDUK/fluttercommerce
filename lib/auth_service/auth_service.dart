import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopjt/home/home.dart';
import '../feed_screen.dart/feed_screen.dart';
import '../pages/login.dart';

class AuthService{
  static final _auth = FirebaseAuth.instance;
  static final _firestore = Firestore.instance;


  static void signUpUser (BuildContext context, String name, String email, String password) async{
    print('Metodo de Sing up user');
    try{
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,

      );
      FirebaseUser signedInUser = authResult.user;
      print('revision metodo signup user');

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
    }catch(e){
        print(e);
    }
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  }
}