import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
//import 'package:flutter/services.dart';
// import 'package:timeline_tile/timeline_tile.dart';

class TrackingPage extends StatefulWidget {

  TrackingPage(): super();
  final String title = " Tracking";
  
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {

  int current_step = 0;
  List<Step> steps = [
      Step(
        title: Text("Order Received"),
        content: Text('Hello!'),
        isActive: false,
      ),
      Step(
        title: Text("Order on Progress"), 
        content: Text("Hello"),
        isActive: false,
      ),
      Step(
        title:Text("Order has been delivered to you"),
        content:Text("Hello1"),
        state: StepState.complete,
        isActive: false,
      )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white ,
        appBar: AppBar(
          title: Text("Tracking"),
          ),

        body: Container(
          child:Stepper(
            currentStep: this.current_step, 
            steps:steps, 
            type: StepperType.vertical, 
            // onStepTapped:(step){
            //   setState(() {
            //     current_step = step;
            //   });
            //},

            // onStepContinue: (){
            //   setState(() {
            //     if(current_step <steps.length -1){
            //       current_step = current_step +1;                   
            //     } else {
            //       current_step = 0;                  
            //     }
            //   });
            // },
            // onStepCancel: (){
            //   setState(() {
            //     if(current_step > 0){
            //       current_step = current_step - 1; 
            //     } else{
            //       current_step = 0;
            //     }
            //   });
            // },
          )
        )



      //   body:TimelineTile(
      //     axis: TimelineAxis.vertical,
      //     alignment: TimelineAlign.center,
      //     lineXY: 0.8,
      //     endChild: Container(
      //       constraints: const BoxConstraints(
      //       minHeight: 100,
      //     ),
      //     color: Colors.white,
      //   ),
      //     startChild: Container(
      //     color:Colors.blueAccent[700],
      //   ),
      
      //  )
    );
      
  }
}