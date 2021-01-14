import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pl/Screens/Mainpage.dart';
// import 'package:pl/Screens/Liabiltypage.dart';
import 'package:pl/main.dart';
import 'package:firebase_database/firebase_database.dart';

class SignupPage extends StatefulWidget {
  final String title = 'Registration';
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();        //Validating the user's Email and Password

  //Tracking all the changes to those text file
 
  TextEditingController _firstnameController;
  TextEditingController _lastnameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _addressController;
  TextEditingController _address2Controller;

  DatabaseReference _ref ;
  final referenceData = FirebaseDatabase.instance;

  @override
  // ignore: must_call_super
  void initState() {
   _firstnameController = TextEditingController();
   _lastnameController = TextEditingController();
   _emailController = TextEditingController();
   _passwordController = TextEditingController();
   _addressController = TextEditingController();
   _address2Controller = TextEditingController();

   _ref = FirebaseDatabase.instance.reference().child('Profile');
   
  }

    
  final auth = FirebaseAuth.instance;
  

  bool checkBoxValue = false;

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
              mainAxisAlignment: MainAxisAlignment.start,
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

                      //address             
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          controller: _addressController,
                          decoration: InputDecoration(
                            labelText: 'Address 1',
                            hintText: 'Address 1',
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
                      
                      //Address 2              
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          controller: _address2Controller,
                          decoration: InputDecoration(
                            labelText: 'Address 2',
                            hintText: 'Address 2',
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
                        child: RaisedButton(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          // alignment: Alignment.center,
                          onPressed: () async {
                            saveContact();
                            await auth
                                .createUserWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text)
                                .then((_) async {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => Mainpage()));
                            });
                          },
                          child: const Text('Sign Up'),
                        ),
                      ),
                     
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

  void saveContact(){
    String firstname = _firstnameController.text;
    String lastname = _lastnameController.text;
    String email = _emailController.text;
    String pass = _passwordController.text;
    String address = _addressController.text;
    String address2 = _address2Controller.text;

    Map<String, String> profile = {
      'First Name': firstname, 
      'Last Name' : lastname, 
      'Email'     : email, 
      'Password'  : pass, 
      'Address'   : address,
      'Address2'  : address2
    };
    _ref.push().set(profile).then((value) {
        Navigator.pop(context);
    });
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
