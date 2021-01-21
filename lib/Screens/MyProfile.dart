// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
// import 'package:pl2/Screens/Mainpage.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:pl2/models/User_model.dart';


// class MyProfilePage extends StatefulWidget {
//   @override
//   _MyProfilePageState createState() => _MyProfilePageState();
// }

// class _MyProfilePageState extends State<MyProfilePage> {
//   //user data
//   List<UserModel> dataList = [];
//   @override
//   void initState() {
    
//     super.initState();
//     DatabaseReference db = FirebaseDatabase.instance.reference().child("UserModel");
//     db.once().then((DataSnapshot snapshot){
//       Map<dynamic, dynamic> values = snapshot.value;      
//         values.forEach((key,values) {
//           UserModel data = new UserModel(
//              values [key]["firstname"],
//              values [key]["lastname"],
//              values [key]["email"],
//              values [key]["pass"],
//              values [key]["address"],
//              values [key]["address2"],
//           );
//           dataList.add(data);
//         });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//        resizeToAvoidBottomInset: false,
//        backgroundColor: Colors.white,
//        appBar: AppBar(
//         brightness: Brightness.light,
//         backgroundColor: Colors.blueAccent[700],
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Mainpage()));
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.white,
//           ),
//         ),
//        ),
//        body: 
//        Container(
//           child: dataList.length == 0 ? 
//           Center(
//            child: Text(
//              'data',
//              style: TextStyle(fontSize: 30),
//            ), 
//           ) : new ListView.builder(
//               itemCount: dataList.length,
//               itemBuilder: (_, index){
//                 return postData(dataList[index].firstname,
//                 dataList[index].lastname,
//                 dataList[index].email,
//                 dataList[index].pass,
//                 dataList[index].address,
//                 dataList[index].address2);
//               },
//           ),
         
//         ),
      
        
//       // SingleChildScrollView(
//       //   child: Container(
//       //     width: MediaQuery.of(context).size.width,
//       //     child:Column(
//       //       children: <Widget>[
//       //         FutureBuilder(
//       //           future:Provider.of(context).auth.
//       //         )
//       //       ],
//       //     )
//       //   )
//       // )
      
//     );
//   }

 

//    Widget postData(String firstname, String lastname,String email,String pass, String address, String address2)
//   {
//     return Card(
//         margin: EdgeInsets.all(15),
//         color: Color(0xffff2fc3),
//         child: Container(
//           color:Colors.white, 
//           margin:EdgeInsets.all(1.5),
//           padding:EdgeInsets.all(10),
//           child:Column(
//             children:<Widget> [
//                //firstname
//                 new Text(
//                     "firstname: $firstname", 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 ),

//                 //lastname
//                 Text(
//                     lastname, 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 ),
//                 //email
//                 new Text(
//                     email, 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 ),
//                 //pass
//                 new Text(
//                     pass, 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 ),
//                 //address
//                 new Text(
//                     address, 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 ),
//                 //address2
//                 new Text(
//                     address2, 
//                     style: TextStyle(
//                       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87
//                     ),
//                     textAlign: TextAlign.center,
//                 )

//             ],
//           )
//         ),
//     );
//   }
// }

//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pl2/Screens/Mainpage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pl2/src/DataOrder.dart';

class MyProfilePage extends StatefulWidget {
  // MyProfilePage({this.data});
  // final FirebaseApp data;

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  
  //Tracking changes to all Text Variable
  TextEditingController _firstnameController;
  TextEditingController _lastnameController;
  TextEditingController _emailController;
  //TextEditingController _passwordController;
  TextEditingController _addressController;
  TextEditingController _address2Controller;

  DatabaseReference _ref ;
  final referenceData = FirebaseDatabase.instance;

  @override
  // ignore: must_call_super
  void initState() {
   _firstnameController = TextEditingController();
   _lastnameController = TextEditingController();
   _emailController = TextEditingController();
   //_passwordController = TextEditingController();
   _addressController = TextEditingController();
   _address2Controller = TextEditingController();

   _ref = FirebaseDatabase.instance.reference().child('Profile');
   
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
              //First name
              // Text('First Name',
              //   style: TextStyle(
              //   fontSize:14.0,
              //   fontWeight: FontWeight.w800)
              // ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _firstnameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'First Name',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),

              //Last name 
               Text('Last Name',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _lastnameController,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                    hintText: 'Last Name',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),

              //Email
               Text('Email',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Email Address',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),
              
              //Password
              //  Text('Password',
              //   style: TextStyle(
              //   fontSize:14.0,
              //   fontWeight: FontWeight.w800)
              // ),
              // Padding(
              //   padding: EdgeInsets.all(16.0),
              //   child: TextFormField(
              //     keyboardType: TextInputType.visiblePassword,
              //     controller: _passwordController,
              //     obscureText: true,
              //     decoration: InputDecoration(
              //       labelText: 'Password',
              //       hintText: 'Password',
              //       hintStyle:TextStyle(color:Color(0xFFCCCCC)),
              //       contentPadding: new EdgeInsets.symmetric(
              //         vertical:14.0,
              //         horizontal:7.0,
              //     ),
              //     focusedBorder: const OutlineInputBorder(
              //         borderSide: const BorderSide(
              //           color: Colors.grey,
              //           width: 0.0),
              //       ),
              //       enabledBorder: const OutlineInputBorder(
              //         borderSide: const BorderSide(color: Colors.grey,
              //         width:0.0),
              //       ),
              //     ),
              //   ),
              // ),

              //address
              Text('Address 1',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address 1',
                    hintText: 'Address 1',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),
              
              //Address 2 
              Text('Address 2',
                style: TextStyle(
                fontSize:14.0, 
                fontWeight: FontWeight.w800)
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  controller: _address2Controller,
                  decoration: InputDecoration(
                    labelText: 'Address 2',
                    hintText: 'Address 2',
                    hintStyle:TextStyle(color:Color(0xFFCCCCC)),
                    contentPadding: new EdgeInsets.symmetric(
                      vertical:14.0, 
                      horizontal:7.0,
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 0.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, 
                      width:0.0),
                    ),
                  ),
                ),
              ),
              Container(
                  height: 55,
                  child:RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('Save', 
                      style:TextStyle(color:Colors.white,
                      fontSize:18.0)
                    ),
                    onPressed: (){
                      //saveContact();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>MyProfilePage()));
                                                                          
                    },
                  ),                   
              ),       
            ],
          )
        )
      )
      
    );
  }
  void saveContact(){
    String firstname = _firstnameController.text;
    String lastname = _lastnameController.text;
    String email = _emailController.text;
    // String pass = _passwordController.text;
    String address = _addressController.text;
    String address2 = _address2Controller.text;

    Map<String, String> profile = {
      'First Name': firstname,
      'Last Name' : lastname,
      'Email'     : email,
      // 'Password'  : pass,
      'Address'   : address,
      'Address2'  : address2
    };
    _ref.push().set(profile).then((value) {
        Navigator.pop(context);
    });
  }
}