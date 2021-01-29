import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';

class MyProfilePage extends StatefulWidget {

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: Colors.blueAccent,
       appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        title: Text('My Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainpage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
       ),

       body: StreamBuilder(
           stream: FirebaseFirestore.instance.collection('Users').snapshots(),
           builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
             if(!snapshot.hasData){
               return Center(
                 child: CircularProgressIndicator(),
               );
             }
             return ListView(
                 children:snapshot.data.docs.map((document){
                    return Card(
                     margin: EdgeInsets.all(15),
                     color:Color(0xffff2fc3),
                     child: Container(
                         color:Colors.white,
                         margin: EdgeInsets.all(1.5),
                         padding: EdgeInsets.all(10),
                         child: Column(
                           children: <Widget>[
                             // First Name
                             Text("First Name: " + document['First Name '],
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 // fontWeight: FontWeight.bold
                               ),
                             ),

                             //Last Name

                             Text("Last Name: " + document['Last Name'],
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 // fontWeight: FontWeight.bold
                               ),
                             ),

                             //Email
                             Text("Email: " + document['Email   '],
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 // fontWeight: FontWeight.bold
                               ),
                             ),

                             //address
                             Text("Address: " + document['Address '],
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 // fontWeight: FontWeight.bold
                               ),
                             ),

                             //Address2

                             Text("Address2: " + document['Address2'],
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 20,
                                 // fontWeight: FontWeight.bold
                               ),
                             ),
                           ],
                         )
                     ),
                   );
                 }).toList()
             );             
           }
       ),
    );
  }
}

