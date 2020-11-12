import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LiabilityPage extends StatelessWidget{
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
          decoration: BoxDecoration(
            image: DecorationImage(image: new AssetImage("assets/Liability_Page.jpg"),
            fit:BoxFit.cover,
          ), 
        ),
      ),
    );
  }

}