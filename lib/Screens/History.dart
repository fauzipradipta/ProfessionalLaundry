import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pl/Screens/Setting.dart';
import 'package:pl/Screens/Mainpage.dart';

class HistoryPage extends StatelessWidget
{
  final buttonDownShirtHolder; 
  final blouseHolder; 
  final pantsHolder; 
  final dressHolder; 
  final windJacketHolder; 

  HistoryPage({
    Key key, this.buttonDownShirtHolder,
    this.blouseHolder, 
    this.pantsHolder, 
    this.dressHolder, 
    this.windJacketHolder
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.blueAccent[700] ,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  Mainpage()));            
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: <Widget>[
          Container(child: 
            Text('Button Down Shirt ' + buttonDownShirtHolder,
            style: TextStyle(fontSize: 15, color:Colors.white), 
            textAlign: TextAlign.center,)
          ),
          
          Container(child: 
            Text('Blouse ' + blouseHolder,
            style: TextStyle(fontSize: 15, color:Colors.white), 
            textAlign: TextAlign.center,
            )
          ),

          Container(child: 
            Text('Pants ' + pantsHolder,
            style: TextStyle(fontSize: 15, color:Colors.white), 
            textAlign: TextAlign.center,)
          ),

          Container(child: 
            Text('Dress ' + dressHolder,
            style:TextStyle(fontSize: 15, color:Colors.white), 
            textAlign: TextAlign.center,)
          ),

          Container(child: 
            Text('Wind Jacket ' + windJacketHolder,
            style: TextStyle(fontSize: 15, color:Colors.white), 
            textAlign: TextAlign.center,)
          ),
        ]
      )
    );
  }
}
