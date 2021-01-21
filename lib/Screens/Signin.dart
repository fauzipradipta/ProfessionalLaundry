import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pl2/main.dart'; 
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:pl2/Screens/Mainpage.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  

  final auth = FirebaseAuth.instance;
  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.blueAccent[700] ,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(         //Expanded to expand element on the page
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: <Widget>[
                      Text("Login",style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,                  
                      ),),
                      SizedBox(height:20,),
                      Text("Login to your account",style:TextStyle(
                       fontSize: 15,
                       color: Colors.black
                      ),),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:Container(
                      padding: EdgeInsets.only(top:3, left:3),
                      decoration: BoxDecoration(
                        // border: Border(
                        // bottom:BorderSide(color: Colors.blue[900]),
                        // top:BorderSide(color: Colors.blue[900]),
                        // right:BorderSide(color: Colors.blue[900]),
                        // left:BorderSide(color: Colors.blue[900]),
                        // )
                      ),
                    
                      //LogIn Button
                      child: RaisedButton(
                        onPressed: () {
                          auth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((_){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainpage()));
                          });
                        },
                        color:Colors.blue[900],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text('Login', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 18
                          ),),
                      ),
                     )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      Text("Sign Up", style:TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18
                        ),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}