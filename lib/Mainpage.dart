import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class Mainpage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueAccent[700],
      appBar: AppBar(
        title: Text('Professional Laundry'),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Put your order below",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                makeInput(label: "First Name"),
                makeInput(label: "Last Name", obscureText: true),
                makeInput(label: "Address", obscureText: true),
                makeInput(label: "City"),
                makeInput(label: "Zip code"),
                makeInput(label: "Phone Number"),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/buttonDownShirt.jpg'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF464A7E),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/blouse.jpg'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF464A7E),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/pants.jpg'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF464A7E),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/dress.jpg'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF464A7E),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      Image.asset('assets/images/windjacket.jpg'),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF464A7E),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.blue[900]),
                            top: BorderSide(color: Colors.blue[900]),
                            right: BorderSide(color: Colors.blue[900]),
                            left: BorderSide(color: Colors.blue[900]),
                          )),
                      //Check Box for Liability Page

                      //Order Button
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.blue[900],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          'Order',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    )),
              ],
            ),
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
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              // ignore: deprecated_member_use
              title: Text("Setting"),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              // ignore: deprecated_member_use
              title: Text("Price"),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              // ignore: deprecated_member_use
              title: Text("Help"),
              backgroundColor: Colors.black),
        ],
        onTap: (index) {
          _currentIndex = index;
        },
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400])),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]))),
        ),
        //SizedBox(height: 30,),
      ],
    );
  }
}
