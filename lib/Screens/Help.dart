import 'package:flutter/material.dart'; 
import 'package:flutter/cupertino.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
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
                  onPressed: (){},
                  color:Colors.white,
                  shape:RoundedRectangleBorder(
                    borderRadius: (BorderRadius.circular(15)),
                    side:BorderSide(
                        color: Colors.black
                    ),
                  ),
                    child:Text("Customer Service")
                ),
              ],
            ),
        ),
    );
  }
}