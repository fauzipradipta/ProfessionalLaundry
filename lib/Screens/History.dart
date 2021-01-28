import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pl2/Net/firebase.dart';


// final orderRef =FirebaseFirestore.instance.collection('Order');

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  // List userOrderList = [];

  // DatabaseManager db = new DatabaseManager();
  // QuerySnapshot userOrder;
  // @override
  // void initState()
  // {
  //   super.initState();
  //   db.getData().then((results){
  //       userOrder = results;
  //   });
  // }



  List<Widget> makeListWidget(AsyncSnapshot snapshot){
    return snapshot.data.docs.map<Widget>((document){
      // return ListTile(
      //   title:Text( 'Button Down Shirt' + document.get()['buttonDownShirt']),
      //   subtitle: Text('Blouse' + document.get()['blouse']),
      // );

      return Card(
          margin: EdgeInsets.all(15),
          color:Color(0xffff2fc3),
          child: Container(
              color:Colors.white,
              margin: EdgeInsets.all(1.5),
              padding: EdgeInsets.all(10),
              child: Column(
                children:<Widget>[
                  Text('Button Down Shirt :' + document.get()['buttonDownShirt']),
                  Text('Blouse :' + document.get()['blouse']),
                  Text('Pants :' + document.get()['pants']),
                  Text('Dress : ' + document.get()['dress']),
                  Text('Wind Jacket :' + document.get()['windJacket']),
                ]
             ),
          ),
      );
    }).toList();
  }

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

        body: Card(
              margin: EdgeInsets.only(bottom: 450),
              color:Color(0xffff2fc3),
              child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(1.5),
                  padding: EdgeInsets.all(10),
                  child:Column(

                    children: <Widget>[
                      Text("Button Down Shirt:  1",
                        style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // SizedBox(height: 1,),
                      Text("Blouse :  1",
                        style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // SizedBox(height: 1,),

                      Text("pants : 1",
                        style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // SizedBox(height: 1,),

                      Text("Dress : 1",
                        style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // SizedBox(height: 1,),

                      Text("Wind Jacket : 1",
                        style: TextStyle(color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      // SizedBox(height: 1,),
                    ],
                  )
              )
          ),


        // Container(
        //   child: StreamBuilder(
        //       stream: FirebaseFirestore.instance.collection('orders').snapshots(),
        //       builder: (context, snapshot){
        //         switch (snapshot.connectionState){
        //           case ConnectionState.waiting:
        //             return CircularProgressIndicator();
        //           default:
        //             return ListView(
        //               children:makeListWidget(snapshot),
        //             );
        //         }
        //       }),
        // ),



    );
  }


  // Widget CardUI (String buttonDownShirt, String blouse, String pants, String dress, String windJacket)
  // {
  //   return Card(
  //       margin: EdgeInsets.all(15),
  //       color:Color(0xffff2fc3),
  //       child: Container(
  //           color: Colors.white,
  //           margin: EdgeInsets.all(1.5),
  //           padding: EdgeInsets.all(10),
  //           child:Column(
  //             children: <Widget>[
  //               Text("Button Down Shirt:$buttonDownShirt",
  //                 style: TextStyle(color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold
  //                 ),
  //               ),
  //               SizedBox(height: 1,),
  //               Text("Blouse :$blouse",
  //                 style: TextStyle(color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold
  //                 ),
  //               ),
  //               SizedBox(height: 1,),
  //
  //               Text("pants :$pants",
  //                 style: TextStyle(color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold
  //                 ),
  //               ),
  //               SizedBox(height: 1,),
  //
  //               Text("Dress :$dress",
  //                 style: TextStyle(color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold
  //                 ),
  //               ),
  //               SizedBox(height: 1,),
  //
  //               Text("Wind Jacket :$windJacket",
  //                 style: TextStyle(color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold
  //                 ),
  //               ),
  //               SizedBox(height: 1,),
  //             ],
  //           )
  //       )
  //   );
  //}
 }