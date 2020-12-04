import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pl/Screens/Login.dart';
import 'package:pl/Screens/MyProfile.dart';

class SettingPage extends StatefulWidget{
  @override
  _SettingPage createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage>{
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context){
    return  SafeArea(
        //My Profile Button
        child: Container(
          width:double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical:30),
            child:Column(
              children:<Widget> [
                FlatButton(
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