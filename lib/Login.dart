import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pl/Mainpage.dart';
class LoginPage extends StatelessWidget{
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(         //Expanded to expand element on the page
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: <Widget>[
                      Text("Login",style:TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,                  
                      ),),
                      SizedBox(height:20,),
                      Text("Login to your account",style:TextStyle(
                       fontSize: 15,
                       color: Colors.black
                      ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        makeInput(label: "Email"),
                        makeInput(label: "Password", obscureText:true),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:Container(
                      padding: EdgeInsets.only(top:3, left:3),
                      decoration: BoxDecoration(
                        // border: Border(
                        // bottom:BorderSide(color: Colors.blue[900]),
                        // top:BorderSide(color: Colors.blue[900]),
                        // right:BorderSide(color: Colors.blue[900]),
                        // left:BorderSide(color: Colors.blue[900]),
                        // )
                      ),
                    
                      //LogIn Button
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: ()  {
                              Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Mainpage()
                            )
                          );
                        },
                        color:Colors.blue[900],
                        elevation: 0,
                        shape: RoundedRectangleBorder(              
                          borderRadius: BorderRadius.circular(50)
                        ),  
                        child: Text('Login', style: TextStyle(
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
                      Text("Don't have an account?"),
                      Text("Sign Up", style:TextStyle(
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
        SizedBox(height: 30,),
      ],
    );
  }
}