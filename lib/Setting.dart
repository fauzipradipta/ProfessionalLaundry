import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingPage extends StatelessWidget{  
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
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
      ),

      body: Container(
        height: 50.0,
        //My Profile Page Button 
        child: GestureDetector(
          onTap:(){}, 
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                 color: Color(0xFFF05A22),
                 style: BorderStyle.solid,
                 width: 1.0,
              ),
              color:Colors.transparent, 
              borderRadius: BorderRadius.circular(30.0),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                                color: Color(0xFFF05A22),
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                  ),
                ),
              )],
            ),
          ),
        ),
         
      ), 
    );
  }  
}