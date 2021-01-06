import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sticky_headers/sticky_headers.dart';
import 'dart:core';

class TrackingPage extends StatefulWidget {

  // TrackingPage(): super();
  // final String title = " Tracking";
  
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {

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
  @override
  Widget build(BuildContext context) {
    //Date and Time
    DateTime now = new DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tracking Order'),
      ),
      body:ListView(
        shrinkWrap: true,
        children:<Widget>[         
          Padding(
            padding: const EdgeInsets.all(10),            
            child: Row(
              children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      
                      children:<Widget>[                        
                          Text('Estimated Time',
                           style: GoogleFonts.yantramanav(
                            color: Colors.blue[900],
                            fontSize: 30,                            
                           ),
                          ),

                          Text('30 Minutes',
                           style: GoogleFonts.yantramanav(
                           color: Colors.blue[900],
                           fontSize: 30,
                          ),
                        )
                
                      ],
                    )
                  )
              ],
            )
          ),

          TimelineTile(
            alignment:TimelineAlign.manual, 
            lineXY: 0.1, 
            isFirst: true, 
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color:Color(0xFFDADADA), 
              padding: EdgeInsets.all(6),
            ),
            
            endChild: const _RightChild(
                // asset: 'assets/order_placed.png',
                
                title: 'Order Received',
                message: 'Your order has been confirmed',
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.grey,
            ),
          ),

           TimelineTile(
            alignment:TimelineAlign.manual, 
            lineXY: 0.1, 
            isFirst: true, 
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color:Color(0xFFDADADA), 
              padding: EdgeInsets.all(6),
            ),
            
            endChild: const _RightChild(
                // asset: 'assets/order_placed.png',
                title: 'Order on Progress',
                message: '',
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.grey,
            ),
          ),

           TimelineTile(
            alignment:TimelineAlign.manual, 
            lineXY: 0.1, 
            isFirst: true, 
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color:Color(0xFFDADADA), 
              padding: EdgeInsets.all(6),
            ),
            
            endChild: const _RightChild(
                // asset: 'assets/order_placed.png',
                title: 'Has Been Delivered ',
                message: '',
            ),
            beforeLineStyle: const LineStyle(
              color: Colors.grey,
            ),
          ),

        ]
      ),
    );
  }  
}

class _RightChild extends StatelessWidget {
  const _RightChild({
    Key key,
    this.asset,
    this.title,
    this.message,
    this.disabled = false,
  }) : super(key: key);

  final String asset;
  final String title;
  final String message;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          // Opacity(
          //   child: Image.asset(asset, height: 50),
          //   opacity: disabled ? 0.5 : 1,
          // ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.yantramanav(
                  color: disabled
                      ? const Color(0xFFBABABA)
                      : const Color(0xFF636564),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                message,
                style: GoogleFonts.yantramanav(
                  color: disabled
                      ? const Color(0xFFD5D5D5)
                      : const Color(0xFF636564),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}