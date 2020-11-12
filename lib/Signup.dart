import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pl/Liabiltypage.dart';
import 'package:pl/Login.dart';

class SignupPage extends StatefulWidget{
  @override 
  _SignupPage createState() => _SignupPage();
}
class _SignupPage extends State<SignupPage>{

  bool checkBoxValue = false;  
  
  Widget checkbox(String title, bool boolValue){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
          Text(title),
          Checkbox(
            value: boolValue, 
            onChanged:(bool value){
              //manage state value
              setState((){
                  checkBoxValue = value;
              });
            }
          )
      ]
    );
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Colors.blueAccent[700] ,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.blueAccent[700],
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height ,
          width: double.infinity,
          child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(         //Expanded to expand element on the page
                  child: Column(
                        children:<Widget>[
                          Column(children: <Widget>[
                            Text("Sign Up",style:TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 20,),
                            Text("Create an account", style:TextStyle(
                              fontSize: 15,
                              color: Colors.white ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              makeInput(label: "Email"),
                              makeInput(label: "Password", obscureText:true),
                              makeInput(label: "Confirm Password", obscureText: true),
                              makeInput(label: "Birth of Data"),
                              makeInput(label: "Home Address"),

                              //Check Box for Liability Page
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  checkbox("Liability Page", checkBoxValue),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //Liability Page
                        // CheckboxListTile(
                        //   title: Text('Liability Page'),
                          
                        //   )
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child:Container(
                            padding: EdgeInsets.only(top:3, left:3),
                            decoration: BoxDecoration(
                              border: Border(
                              bottom:BorderSide(color: Colors.blue[900]),
                              top:BorderSide(color: Colors.blue[900]),
                              right:BorderSide(color: Colors.blue[900]),
                              left:BorderSide(color: Colors.blue[900]),
                              )
                            ),


                            //Sign Up Button
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: ()  {
                                 Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => LoginPage()
                                  )
                                );
                              },
                              color:Colors.blue[900],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('Sign Up', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18
                                ),),
                            ),
                           )
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already have an account?"),
                            Text("Login", style:TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18
                              ),),
                          ],
                        ),
                      ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
  Widget makeInput({label,obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ), ),
        SizedBox(height: 5,), 
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400])
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.grey[400])
            )
          ),
        ),
        //SizedBox(height: 30,),
      ],
    );
  }
}