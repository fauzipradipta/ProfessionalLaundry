// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import'package:pl2/Screens/CompanyApp/Text.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home:MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var selectedType;
  // String _orderReceived = 'Yes';
  String uid = '';
  // List<String> option = <String>['Yes','No'];
  TextEditingController _receivedController = TextEditingController();
  TextEditingController _onProgressController = TextEditingController();
  TextEditingController _deliveredController = TextEditingController();


  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }
  // updateData(String progressOrder,String uid){
  //   OrderPickedup().progressConfirm(progressOrder, uid);
  // }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('Order  Confirmation'),
        ),
        body:
        SingleChildScrollView(
          clipBehavior: Clip.none,
          child: SafeArea(

            //Order Received
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Put your update for every progress'",
                          style:TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),

                    //Order Received
                    Padding(
                        padding: EdgeInsets.only(top:25),
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left:10),
                                child: Column(
                                  children: <Widget>[
                                    Text('Order Received',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                            ),

                            // Order received input
                            Padding(
                                padding: EdgeInsets.only(left:20),
                                child: SizedBox(
                                  width:100,
                                  child: TextFormField(
                                    controller: _receivedController,
                                    style:TextStyle(
                                        color: Colors.black
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "put your respond",
                                      hintStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                )


                            ),

                            //Order Received Button
                            Padding(
                              padding: EdgeInsets.only(left:30),
                              child: MaterialButton(onPressed: (){
                                OrderPickedup().orderConfirm(_receivedController.text);
                                Navigator.of(context).pushReplacement(MaterialPageRoute(

                                    builder: (context) => MyApp()));
                              },
                                  color: Colors.blue[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Text('Received',
                                    style: TextStyle(
                                        color:Colors.white
                                    ),)
                              ),
                            ),

                          ],
                        )
                    ),

                    //On Progress
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left:10),
                              child:Column(
                                  children:<Widget>[
                                    Text('Start Washing',
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]
                              )
                          ),
                          // Order ProgressDropDown
                          Padding(
                              padding: EdgeInsets.only(left:20),
                              child: SizedBox(
                                width:100,
                                child: TextFormField(
                                  controller: _onProgressController,
                                  style:TextStyle(
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "put your respond",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                          ),
                          //Order Progress Button
                          Padding(
                            padding: EdgeInsets.only(left:30),
                            child: MaterialButton(
                                onPressed: (){
                                  OrderPickedup().progressConfirm(_onProgressController.text);
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (context) => MyApp()));
                                  // submitAction(context);
                                  // Navigator.pop(context);
                                },
                                color: Colors.blue[300],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Text('Progress',
                                  style: TextStyle(
                                      color:Colors.white
                                  ),)
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Order Delivered
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left:10),
                              child:Column(
                                  children:<Widget>[
                                    Text('Order Delivered',
                                      style:
                                      TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]
                              )
                          ),

                          // Order Delivered
                          Padding(
                              padding: EdgeInsets.only(left:20),
                              child: SizedBox(
                                width:100,
                                child: TextFormField(
                                  controller: _deliveredController,
                                  style:TextStyle(
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "put your respond",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                          ),
                          //Order Delivered Button
                          Padding(
                            padding: EdgeInsets.only(left:30),
                            child: MaterialButton(
                                onPressed: (){
                                  OrderPickedup().deliveredConfirm(_deliveredController.text);
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (context) => MyApp()));
                                },
                                color: Colors.blue[300],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Text('Delivered',
                                  style: TextStyle(
                                      color:Colors.white
                                  ),)
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                )
            ),


          ),
        )
    );
  }
// submitAction(BuildContext context){
//     updateData(_onProgressController.text, uid);
//     _receivedController.clear();
// }
}
