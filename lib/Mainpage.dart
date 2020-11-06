import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart'; 
import 'package:flutter/cupertino.dart';

class Mainpage extends StatelessWidget{

  int _currentIndex =0;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.blueAccent[700] ,
      appBar: AppBar(
        title: Text('Professional Laundry'),
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
                            Text("Order",style:TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 20,),
                            Text("Put your order below", style:TextStyle(
                              fontSize: 15,
                              color: Colors.white ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              makeInput(label: "First Name"),
                              makeInput(label: "Last Name", obscureText:true),
                              makeInput(label: "Address", obscureText: true),
                              makeInput(label: "City"),
                              makeInput(label: "Zip code"),
                              makeInput(label: "Phone Number"),

                              

                            ],
                          ),
                        ),
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

                            //Check Box for Liability Page

                            //Order Button
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: ()  {},
                              color:Colors.blue[900],
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Text('Order', style: TextStyle(
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

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
           icon: Icon(Icons.add_shopping_cart),
           // ignore: deprecated_member_use
           title: Text("History"),
           backgroundColor: Colors.black
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings_sharp),
            // ignore: deprecated_member_use
            title: Text("Setting"),
            backgroundColor: Colors.black
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.money_sharp),
            // ignore: deprecated_member_use
            title: Text("Price"),
            backgroundColor: Colors.black
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            // ignore: deprecated_member_use
            title: Text("Help"),
            backgroundColor: Colors.black
          ),
        ],
        onTap: (index) {
          _currentIndex = index;
        },
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