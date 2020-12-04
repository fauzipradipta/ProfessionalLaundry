import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class  BodyMainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              // makeInput(label: "First Name"),
              // makeInput(label: "Last Name"),
              // makeInput(label: "Address"),
              // makeInput(label: "City"),
              // makeInput(label: "Zip code"),
              // makeInput(label: "Phone Number"),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
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
                            color: Colors.white,
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
                 padding: EdgeInsets.only(top: 25),
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
                            color: Colors.white,
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
                 padding: EdgeInsets.only(top: 25),
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
                            color: Colors.white,
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
                 padding: EdgeInsets.only(top: 25),
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
                            color: Colors.white,
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
               // padding: const EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(top: 25),
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
                              color: Colors.white,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              // Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 40),
              //     child: Container(
              //       padding: EdgeInsets.only(top: 1, left: 3),
              //       decoration: BoxDecoration(
              //           border: Border(
              //             bottom: BorderSide(color: Colors.blue[900]),
              //             top: BorderSide(color: Colors.blue[900]),
              //             right: BorderSide(color: Colors.blue[900]),
              //             left: BorderSide(color: Colors.blue[900]),
              //           )),                
              //     ),
              // ),
              Padding(
                padding: EdgeInsets.only(top:15),
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
              )
            ],
          ),
        ),
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
