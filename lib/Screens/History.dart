import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



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
        title: Text('History'),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  Mainpage()));
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
      ),

         body: 
         StreamBuilder(
            stream: FirebaseFirestore.instance.collection('Order').snapshots(), 
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
                            Text("Button Down shirt: " + document['Button Down Shirt'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                // fontWeight: FontWeight.bold
                              ),
                            ),

                            //Blouse
                            Text("Blouse: " + document['Blouse'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            //Pants
                            Text("Pants: " + document['Pants'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                // fontWeight: FontWeight.bold
                              ),
                            ),

                            //Dress
                            Text("Dress: " + document['dress'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                // fontWeight: FontWeight.bold
                              ),
                            ),

                            //Wind Jacket

                            Text("Wind Jacket: " + document['Wind Jacket'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
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