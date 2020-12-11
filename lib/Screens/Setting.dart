import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pl/Screens/Login.dart';
import 'package:pl/Screens/MyProfile.dart';
import 'package:pl/Screens/History.dart';
//import 'package:pl/Screens/Bodymainpage.dart';
//import 'package:pl/Screens/Mainpage.dart';

class SettingPage extends StatefulWidget{
  @override
  _SettingPage createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage>{
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context){
    return  Scaffold(      
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.blueAccent[700],
        //My Profile Button
        body: Container(
          width:double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:30),
            child:Column(
              children:<Widget> [
                Padding(
                  padding:  EdgeInsets.only(top: 30),
                  child: FlatButton(
                    minWidth:double.infinity,
                    height: 60,
                    onPressed: (){
                       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyProfilePage()));
                    },
                    color:Colors.white,
                    shape:RoundedRectangleBorder(
                      borderRadius: (BorderRadius.circular(15)),
                      side:BorderSide(
                          color: Colors.black
                      ),
                    ),
                      child:Text("My Profile")
                  ),
                ),

                    //Payment Method Button
                    Column(
                      children:<Widget>[
                        FlatButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color:Colors.white,
                          shape:RoundedRectangleBorder(
                            borderRadius: (BorderRadius.circular(15)),
                            side:BorderSide(
                              color:Colors.black
                            ),
                          ),
                            child:Text("Payment Method")
                        ),
                      ],
                    ),

                    Column(
                      children:<Widget>[
                        FlatButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){
                               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HistoryPage()));
                          },
                          color:Colors.white,
                          shape:RoundedRectangleBorder(
                            borderRadius: (BorderRadius.circular(15)),
                            side:BorderSide(
                              color:Colors.black
                            ),
                          ),
                            child:Text("History")
                        ),
                      ],
                    ),
                Column(
                  children: <Widget>[
                    FlatButton(

                      onPressed: (){
                        auth.signOut();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                     child: Text('LogOut', style: TextStyle(
                                 fontWeight:FontWeight.w600,
                                  color: Colors.white,
                                   fontSize: 15 ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );

  }
}