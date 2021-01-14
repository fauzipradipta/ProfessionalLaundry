// import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl/Screens/Mainpage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pl/src/Data.dart';

class MyProfilePage extends StatefulWidget {
  // MyProfilePage({this.data});
  // final FirebaseApp data;

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  //user data
  List<Data> dataList = [];

  @override
  void initState() {
    
    super.initState();
    DatabaseReference referenceData = FirebaseDatabase.instance.reference().child("Profile");
    referenceData.once().then((DataSnapshot dataSnapshot){
        dataList.clear();

        var keys = dataSnapshot.value.keys;
        var values = dataSnapshot.value;

        for(var key in keys){
          Data data = new Data(
            values [key]["firstname"],
            values [key]["lastname"],
            values [key]["email"],
            values [key]["password"],
            values [key]["address"],
            values [key]["address2"],
          );
          dataList.add(data);
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
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [

                    
            ],
          )
        )
      )
      
    );
  }
  // void saveContact(){
  //   String firstname = _firstnameController.text;
  //   String lastname = _lastnameController.text;
  //   String email = _emailController.text;
  //   String pass = _passwordController.text;
  //   String address = _addressController.text;
  //   String address2 = _address2Controller.text;

  //   Map<String, String> profile = {
  //     'First Name': firstname, 
  //     'Last Name' : lastname, 
  //     'Email'     : email, 
  //     'Password'  : pass, 
  //     'Address'   : address,
  //     'Address2'  : address2
  //   };
  //   _ref.push().set(profile).then((value) {
  //       Navigator.pop(context);
  //   });
  // }
}