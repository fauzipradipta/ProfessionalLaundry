import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pl/Screens/Liabiltypage.dart';
import 'package:pl/main.dart';

class SignupPage extends StatefulWidget {
  final String title = 'Registration';
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();        //Validating the user's Email and Password

  //Tracking all the changes to those text file
  TextEditingController _emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  // bool _success;
  final auth = FirebaseAuth.instance;
  //node.js
  //var email;
  //var password;

  bool checkBoxValue = false;

  // Widget checkbox(String title, bool boolValue) {
  //   return Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         Text(title),
  //         Checkbox(
  //             value: boolValue,
  //             onChanged: (bool value) {
  //               //manage state value
  //               setState(() {
  //                 checkBoxValue = value;
  //               });
  //             })
  //       ]);
  // }

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
        //key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
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
                      // makeInput(label: "Email"),
                      // makeInput(label: "Password", obscureText:true),
                      // makeInput(label: "Confirm Password", obscureText: true),
                      // makeInput(label: "Birth of Data"),
                      // makeInput(label: "Home Address"),

                      //Check Box for Liability Page

                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     checkbox("Liability Page", checkBoxValue),
                      //   ],
                      // ),

                      // padding: EdgeInsets.symmetric(horizontal: 40),
                      // child:Container(
                      //   padding: EdgeInsets.only(top:3, left:3),
                      //   decoration: BoxDecoration(
                      //     border: Border(
                      //     bottom:BorderSide(color: Colors.blue[900]),
                      //     top:BorderSide(color: Colors.blue[900]),
                      //     right:BorderSide(color: Colors.blue[900]),
                      //     left:BorderSide(color: Colors.blue[900]),
                      //     ),
                      //   ),
                      Container(
                        child: RaisedButton(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          // alignment: Alignment.center,
                          onPressed: () async {
                            await auth
                                .createUserWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text)
                                .then((_) async {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => LiabilityPage()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]))),
        ),
        //SizedBox(height: 30,),
      ],
    );
  }
}
