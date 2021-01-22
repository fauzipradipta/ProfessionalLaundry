import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:pl2/Screens/Mainpage.dart';
import 'package:pl2/Screens/Signin.dart';
// import 'package:pl2/Screens/PricePage.dart';
import 'package:pl2/Screens/Signup.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false, 
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent[700],      //Background Color
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height:MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal:30, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Column(
                children: <Widget>[
                  Text("Welcome", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),),
                SizedBox(height: 20,),
                Text("We're gonna help you to clean your laundry",
                textAlign: TextAlign.center, 
                style:TextStyle(
                  color: Colors.white,    //Color text
                  fontSize: 15
                ),)
               ],
              ),
              Container(
                height: MediaQuery.of(context).size.height /3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/FullSizeR.jpg')  //Input Image
                  )
                ),
              ),
              //Login
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60, 
                    onPressed:() {
                     //future: Firebase.initializeApp();
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SigninPage()));
                    }, 
                    color:Colors.blue[900],
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text('Login', style: TextStyle(
                      fontWeight:FontWeight.w600,
                      color: Colors.white,
                      fontSize: 18 ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(top:3, left:3),
                    // decoration: BoxDecoration(
                    //
                    // ),
                  
                    //Signup
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed:() {
                        //future: Firebase.initializeApp();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupPage()));
                      }, 
                      color:Colors.blue[900],
                      elevation: 0,
                      shape: RoundedRectangleBorder(              
                        borderRadius: BorderRadius.circular(50)
                      ),  
                      child: Text('SignUp', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 18 
                        ),),
                    ), 
                   )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }  
}

