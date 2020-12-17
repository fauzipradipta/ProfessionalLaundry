// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl/Screens/Mainpage.dart';
import 'package:firebase_database/firebase_database.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  DatabaseReference _ref;

  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  // _ref = FirebaseDatabase.instance.reference().child('Profile');

  @override
  void initState(){
  
   _ref = FirebaseDatabase.instance.reference().child('Profile');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: Colors.white,
       appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainpage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
       ),
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              //First name
              Text('First Name',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _firstnameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'First Name',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),

              //Last name 
               Text('Last Name',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                    hintText: 'Last Name',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),

              //Email
               Text('Email',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Email Address',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),
              
              //Password
               Text('Password',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),

              //address
              Text('Address',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    hintText: 'Address',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),
              Container(
                  height: 55,
                  child:RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('Save', 
                      style:TextStyle(color:Colors.white,
                      fontSize:18.0)
                    ),
                    onPressed: (){
                      saveContact();
                      
                    },
                  ),  
              ),       
            ],
          )
        )
      )
    );
  }
  void saveContact(){
    String firstname = _firstnameController.text;
    String lastname = _lastnameController.text;
    String email = _emailController.text;
    String pass = _passwordController.text;
    String address = _addressController.text;

    Map<String, String> profile = {
      'First Name': firstname, 
      'Last Name' : lastname, 
      'Email'     : email, 
      'Password'  : pass, 
      'Address'   : address
    };
    _ref.push().set(profile).then((value) => Navigator.pop(context));
  }
}