import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pl/Screens/Mainpage.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  //Tracking all the changes to those text file
  TextEditingController cardController = TextEditingController();
  TextEditingController namecardController = TextEditingController();
  TextEditingController dateYearController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blueAccent[700],
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

      body: Form(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal:40),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child:Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child:Column(
                  children:<Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:<Widget>[
                          TextFormField(
                            keyboardType:TextInputType.number,
                            controller: cardController,
                            decoration:const InputDecoration(labelText:"Card Number")
                          )
                        ]
                      ),
                    ),

                   Padding(
                      padding: EdgeInsets.symmetric(horizontal:8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:<Widget>[
                          TextFormField(
                            keyboardType:TextInputType.name,
                            controller: namecardController,
                            decoration:const InputDecoration(labelText:"Name on Card")
                          )
                        ]
                      ),
                    ),

                    Row(
                      children: [
                         Padding(
                            padding: EdgeInsets.symmetric(horizontal:8.0),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:<Widget>[
                              TextFormField(
                              
                              keyboardType:TextInputType.datetime,
                              controller: dateYearController,
                              decoration:const InputDecoration(labelText:"MM/YY")
                            )
                          ]
                        ),
                      )
                      ],
                    )
                  ]
                ),
              )
            ]
          )
          
        )
      ),

    );
  }
}