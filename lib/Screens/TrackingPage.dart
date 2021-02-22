import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:sticky_headers/sticky_headers/widget.dart';
// import 'package:timeline_tile/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sticky_headers/sticky_headers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import'package:pl2/Screens/CompanyApp/Tracking.dart';
import'package:pl2/Screens/CompanyApp/Text.dart';
// import 'dart:core';

class TrackingPage extends StatefulWidget {

  // TrackingPage(): super();
  // final String title = " Tracking";
  
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> with TickerProviderStateMixin{

  // int current_step = 0;
  // List<Step> steps = [
  //     Step(
  //       title: Text("Order Received"),
  //       content: Text('Hello!'),
  //       isActive: false,
  //     ),
  //     Step(
  //       title: Text("Order on Progress"), 
  //       content: Text("Hello"),
  //       isActive: false,
  //     ),
  //     Step(
  //       title:Text("Order has been delivered to you"),
  //       content:Text("Hello1"),
  //       state: StepState.complete,
  //       isActive: false,
  //     )
  // ];
  //int _counter = 0; 
  AnimationController _controller; 
  int levelClock = 1800;

  // void _incrementCounter(){
  //   setState(() {
  //     _counter++;
  //   });
  // }

   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }



  // fetchDatabaseList() async {
  //   dynamic resultant = await OrderPickedup().getUsersList();
  //
  //   if (resultant == null) {
  //     print('Unable to retrieve');
  //   } else {
  //     setState(() {
  //       userProfilesList = resultant;
  //     });
  //   }
  // }

  // updateData(String name, String gender, int score) async {
  //   await orderPickedup().updateUserList(name, gender, score);
  //   fetchDatabaseList();
  // }
  
  @override
  Widget build(BuildContext context) {
    //Date and Time
    // DateTime now = new DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tracking Order'),
      ),
      body: Center (
        child: Card(
          child: Column(
          children: <Widget>[
            // Text(
            //     "Order Received: " ,
            //      style: TextStyle(
            //        color: Colors.black,
            //        fontSize: 25,
            //   ),
            // ),

            Text(
              "Order Received: Yes" ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),

            // Text(
            //   "Order Received: No" ,
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 25,
            //   ),
            // ),

            // order on progress
            Text(
              "order on progress: Yes" ,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),

            // Text(
            //   "order on progress: No" ,
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 25,
            //   ),
            // ),

            //order has been delivered

            // Text(
            //   "order has been delivered: Yes" ,
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 25,
            //   ),
            // ),

            // Text(
            //   "order has been delivered: No" ,
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 25,
            //   ),
            // )
          ],
        ),
      ) ,
    ),


      ///////////
    );


  }  
}



// ignore: must_be_immutable
class Countdown extends AnimatedWidget {
  Countdown({Key key, this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    print('animation.value  ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print('inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}