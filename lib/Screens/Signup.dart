import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pl2/Screens/LiabilityPage.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:pl2/main.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pl2/Net/firebase.dart';
class SignupPage extends StatefulWidget {

  final String title = "Registration";

  final referenceData = FirebaseDatabase.instance;
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //final _formKey = GlobalKey<FormState>();

  //Tracking all changes to the file
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _address2Controller = TextEditingController();

 DatabaseReference _ref = FirebaseDatabase.instance.reference().child('Profile');

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueAccent[700],
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),

      body: Form(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:40), 
            height:MediaQuery.of(context).size.height, 
            width: double.infinity,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly, 
              children:<Widget>[
                //Expanded Element on the Widget
                 Expanded(
                  //Expanded to expand element on the page
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create an account",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      //First Name
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              // keyboardType: TextInputType.name,
                              controller: _firstNameController,
                              decoration:
                              const InputDecoration(labelText: "First Name"),
                            ),
                          ],
                        ),
                      ),

                      //Last Name
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              // keyboardType: TextInputType.name,
                              controller: _lastNameController,
                              decoration:
                              const InputDecoration(labelText: "Last Name"),
                            ),
                          ],
                        ),
                      ),
                      //Email
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              // keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              decoration:
                              const InputDecoration(labelText: "Email"),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter an Email';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),

                      //Password
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration:
                              const InputDecoration(labelText: "Password"),
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Please put password";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),

                      //Address
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              // keyboardType: TextInputType.streetAddress,
                              controller: _addressController,
                              decoration:
                              const InputDecoration(labelText: "Address 1"),
                            ),
                          ],
                        ),
                      ),

                      //Address 2
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              // keyboardType: TextInputType.streetAddress,
                              controller: _address2Controller,
                              decoration:
                              const InputDecoration(labelText: "Address 2"),
                            ),
                          ],
                        ),
                      ),
                     
                      Container(
                        child: RaisedButton(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),

                          // alignment: Alignment.center,
                          onPressed: () async {
                            // Map<String,dynamic> data = {
                            //   "First Name": _firstNameController.text,
                            //   "Last Name ": _lastNameController.text,
                            //   "Email ": _emailController.text,
                            //   "Address1 ": _addressController.text,
                            //   "Address2" : _address2Controller.text,
                            // };
                            // saveProfile();
                            await auth
                                .createUserWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text)
                                .then((_) async {
                                  DatabaseManager().userSetup(_firstNameController.text,
                                      _lastNameController.text,
                                      _emailController.text,
                                      _passwordController.text,
                                      _addressController.text,
                                      _address2Controller.text
                                  );
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Mainpage()));
                            });
                          },
                          child: const Text('Sign Up'),
                        ),
                      ),
                      // Container(
                      //   alignment:Alignment.center,
                      //   child: Text(_success == null ? '' : (_success
                      //   ? 'Successfully registered' + _userEmail : 'Registration failed')),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an account?"),
                          Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), 
              ]
            ) ,
          )
        ),
      )
    );
  }

  // void saveProfile(){
  //   String firstName = _firstNameController.text;
  //   String lastName = _lastNameController.text;
  //   String email = _emailController.text;
  //   String address = _addressController.text;
  //   String address2 = _address2Controller.text;
  //
  //   Map<String, String> profile ={
  //     'First Name ': firstName,
  //     'Last Name ': lastName,
  //     'Email' : email,
  //     'Address ': address,
  //     'Address 2': address2,
  //   };
  //   _ref.push().set(profile).then((value){
  //     Navigator.pop(context);
  //   });
  //
  // }
}