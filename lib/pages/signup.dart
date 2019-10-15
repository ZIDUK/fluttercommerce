import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth_service/auth_service.dart';
import '../pages/login.dart';

class SignupScreen extends StatefulWidget {
 
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

    final _formKey = GlobalKey<FormState>();
  String _email, _password, _name;

_submit(){
  if(_formKey.currentState.validate()){
    _formKey.currentState.save();
     print(_name);
     print(_email);
     print(_password);
     
    //loggin in the user with firebase
    AuthService.signUpUser(context, _name, _email, _password);
   
  }
}
_submitGoogle(){
  AuthService.googleSignup(context);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SingleChildScrollView(
      
        child:Container(
          height: MediaQuery.of(context).size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Instagram', 
            style: TextStyle(
             // fontFamily:'',
              fontSize: 50.0
              ),
            ),

            Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                   Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0 ,vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (input) => input.trim().isEmpty ? 'Must be at Least 6 Characters': null,
                    onSaved: (input) => _name = input,
                    obscureText: false,
                  ),
                  ),
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0 ,vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (input) => !input.contains('@') ? 'Please enter a valid email': null,
                    onSaved: (input) => _email = input,
                  ),
                  ),

                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0 ,vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    validator: (input) => input.length < 6 ? 'Must be at Least 6 Characters': null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: 250.0,

                  child: FlatButton(
                    onPressed: _submit,
                    color: Colors.red,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      ),
                    ),
                  ),
                  ),

                  SizedBox(height: 20.0,),
                  Container(
                    width: 250.0,

                  child: FlatButton(
                    onPressed: _submitGoogle,
                    color: Colors.red,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Sign Up con Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      ),
                    ),
                  ),
                  ),

                  SizedBox(height: 20.0,),
                   Container(
                    width: 250.0,

                  child: FlatButton(
                     onPressed: () => Navigator.pop(context),                      
                    color: Colors.red,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        'Back to Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    
    ),
    );
  }
}