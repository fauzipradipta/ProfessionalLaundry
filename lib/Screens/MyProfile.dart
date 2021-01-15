// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl/Screens/Mainpage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pl/models/User_model.dart';


class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  //user data
  List<UserModel> dataList = [];
  @override
  void initState() {
    
    super.initState();
    DatabaseReference db = FirebaseDatabase.instance.reference().child("UserModel");
    db.once().then((DataSnapshot snapshot){
      Map<dynamic, dynamic> values = snapshot.value;      
        values.forEach((key,values) {
          UserModel data = new UserModel(
             values [key]["firstname"],
             values [key]["lastname"],
             values [key]["email"],
             values [key]["pass"],
             values [key]["address"],
             values [key]["address2"],
          );
          dataList.add(data);
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
       body: 
       Container(
          child: dataList.length == 1 ? 
          Center(
           child: Text(
             'data',
             style: TextStyle(fontSize: 30),
           ), 
          ) : new ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (_, index){
                return postData(dataList[index].firstname,
                dataList[index].lastname,
                dataList[index].email,
                dataList[index].pass,
                dataList[index].address,
                dataList[index].address2);
              },
          ),
         
        ),
      
        
      // SingleChildScrollView(
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     child:Column(
      //       children: <Widget>[
      //         FutureBuilder(
      //           future:Provider.of(context).auth.
      //         )
      //       ],
      //     )
      //   )
      // )
      
    );
  }

 

   Widget postData(String firstname, String lastname,String email,String pass, String address, String address2)
  {
    return Card(
        margin: EdgeInsets.all(15),
        color: Color(0xffff2fc3),
        child: Container(
          color:Colors.white, 
          margin:EdgeInsets.all(1.5),
          padding:EdgeInsets.all(10),
          child:Column(
            children:<Widget> [
               //firstname
                new Text(
                    "firstname: $firstname", 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                ),

                //lastname
                Text(
                    lastname, 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                ),
                //email
                new Text(
                    email, 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                ),
                //pass
                new Text(
                    pass, 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                ),
                //address
                new Text(
                    address, 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                ),
                //address2
                new Text(
                    address2, 
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
                    ),
                    textAlign: TextAlign.center,
                )

            ],
          )
        ),
    );
  }
}