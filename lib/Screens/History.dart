import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pl2/Screens/Setting.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:pl2/src/DataOrder.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  // final buttonDownShirtHolder;
  // final blouseHolder;
  // final pantsHolder;
  // final dressHolder;
  // final windJacketHolder;
  //
  // HistoryPage({
  //   Key key, this.buttonDownShirtHolder,
  //   this.blouseHolder,
  //   this.pantsHolder,
  //   this.dressHolder,
  //   this.windJacketHolder
  // }) : super(key: key);

  // final dbRef = FirebaseDatabase.instance.reference().child("Order");
  // Query _ref;
  List<Order> dataList = [];

   @override
   void initState(){
     super.initState();
     // _ref = FirebaseDatabase.instance.reference().child("Order");
     DatabaseReference referenceData = FirebaseDatabase.instance.reference().child("Order");
     referenceData.once().then((DataSnapshot dataSnapshot){
       dataList.clear();

       var keys = dataSnapshot.value.keys;
       var values = dataSnapshot.value;

       for( var key in keys){
         Order order = new Order(
           values[key]["buttonDownShirtHolder"],
           values[key]["blouseHolder"],
           values[key]["pantsHolder"],
           values[key]["dressHolder"],
           values[key]["windJacketHolder"],
         );
         dataList.add(order);
       }
       setState(() {
         //
       });
     });
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

        body:
        ListView.builder(
          itemCount: dataList.length.compareTo(0),
          itemBuilder: (_, index){
                      return CardUI(
                      dataList[index].buttonDownShirtHolder,
                      dataList[index].blouseHolder,
                      dataList[index].pantsHolder,
                      dataList[index].dressHolder,
                      dataList[index].windJacketHolder,);
            },
        )


        // dataList.length == 0 ? Center(child: Text("No Order",
        //               style: TextStyle(fontSize: 30),)): ListView.builder(
        //           itemBuilder: (_, index){
        //             return CardUI(
        //             dataList[index].buttonDownShirtHolder,
        //             dataList[index].blouseHolder,
        //             dataList[index].pantsHolder,
        //             dataList[index].dressHolder,
        //             dataList[index].windJacketHolder,);
        //   },
        // ),



    );
  }

  Widget CardUI (String buttonDownShirtHolder, String blouseHolder, String pantsHolder, String dressHolder, String windJacketHolder)
  {
    return Card(
      margin: EdgeInsets.all(15),
      color:Color(0xffff2fc3),
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(1.5),
        padding: EdgeInsets.all(10),
        child:Column(
          children: <Widget>[
            Text("Button Down Shirt:$buttonDownShirtHolder",
            style: TextStyle(color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 1,),
            Text("Blouse :$blouseHolder",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 1,),

            Text("pants :$pantsHolder",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 1,),

            Text("Dress :$dressHolder",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 1,),

            Text("Wind Jacket :$windJacketHolder",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 1,),
          ],
        )
      )
    );
  }
}

