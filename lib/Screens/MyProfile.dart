import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl2/Models/User_model.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:pl2/src/DataOrder.dart';

class MyProfilePage extends StatefulWidget {
  // MyProfilePage({this.data});
  // final FirebaseApp data;

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  List<Profile> profileList =[];


  @override
  // ignore: must_call_super
  void initState() {

    DatabaseReference _ref = FirebaseDatabase.instance.reference();
   // _ref = FirebaseDatabase.instance.reference().child('Profile');
   _ref.child('Profile').once().then((DataSnapshot dataSnapshot){
     profileList.clear();

     var keys = dataSnapshot.value.keys;
     var values = dataSnapshot.value;

     for(var key in keys){
        Profile profile = new Profile(
          values[key]['firstName'],
          values[key]['lastName'],
          values[key]['email'],
          values[key]['address'],
          values[key]['address2'],
        );
        print(keys);
        print("ss");
        profileList.add(profile);
     }
      setState((){
        print('Length : ${profileList.length}');
      });
   });
   
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       resizeToAvoidBottomInset: false,
       backgroundColor: Colors.white,
       appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
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
      body: profileList.length == 0 ? new Text('No Data Available'):ListView.builder(
        itemCount: profileList.length,
        itemBuilder: (_,index){
                return ProfileUI(
                  profileList[index].firstName,
                  profileList[index].lastName,
                  profileList[index].email,
                  profileList[index].address,
                  profileList[index].address2,
                );
        },
      ),
    );
  }

  Widget ProfileUI(String firstName, String lastName, String email, String address, String address2)
  {
    return Card(
      margin: EdgeInsets.all(15),
      color: Color(0xffff2fc3),
      child: Container(
        color:Colors.white,
        margin: EdgeInsets.all(1.5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            //First Name
            Text("firstName : $firstName",
            style: TextStyle(color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),

            //Last Name
            Text("Last Name : $lastName",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),
            //_emailController
            Text("Email : $email",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),

            //_addressController
            Text("Address 1 : $address",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),

            //_addressController2
            Text("Address 2 : $address2",
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 1,),
          ],
        )
      ),
    );
  }
}