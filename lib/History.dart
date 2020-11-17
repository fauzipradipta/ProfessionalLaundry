import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),

        ),
        title:Text("History"),
      ),
    );
  }
}
