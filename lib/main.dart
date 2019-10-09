import 'package:flutter/material.dart';
import './home/home.dart';
import './pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Home(),
     //home: new Login(),
    );
  }
}