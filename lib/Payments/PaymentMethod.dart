// import 'dart:io';

import 'package:flutter/material.dart'; 
import 'package:flutter/cupertino.dart';
// import 'package:credit_card_number_validator/credit_card_number_validator.dart';
import 'package:pl2/Screens/Mainpage.dart';

class PaymentPage extends StatefulWidget {
    
 
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  //Card Number Controller 
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _nameCardController = TextEditingController();
  TextEditingController _expirationCardController = TextEditingController();
  TextEditingController _securityCardController = TextEditingController();
  //Declare variables To store Card Type and Validity
  String cardType; 
  String nameType;
  bool isValid = false;

  //iniial State
  @override 
  void initState(){
    //implementation initState
    super.initState();

    // Set A Sample Card Value - VISA Card
    // _cardNumberController.text = "4111111111111111";
    _cardNumberController.text = " ";
    _nameCardController.text = "";

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>Mainpage()));
          },
          icon: Icon(Icons.arrow_back_ios, size:20, color:Colors.white,),
        ),
        title: Text('Payment Method'),
      ),
      body: Center(
        child:Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Padding(
                padding:EdgeInsets.all(16.0),
                child:TextFormField(
                  keyboardType:TextInputType.number,
                  controller: _cardNumberController, 
                  decoration:InputDecoration(
                    hintText:'Card Number', 
                    labelText: 'Card Number',
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
                    )
                  )
                )
              ),

              //  Padding(
              //   padding:EdgeInsets.all(20), 
              //   child: cardType != null ? Text('Card Type: $cardType Card Number Valid: $isValid ',
              //   style: TextStyle(
              //     color: isValid ? Colors.green : Colors.red, 
              //     fontSize: 14.0, 
              //     fontWeight: FontWeight.w800
              //   ),):Text('n'),
              // ),
              

              //Name on Card box
              Padding(
                padding:EdgeInsets.all(16.0),
                child:TextFormField(
                  keyboardType:TextInputType.name,
                  controller: _nameCardController, 
                  decoration:InputDecoration(
                    hintText:'Name on Card', 
                    labelText: 'Name on Card',
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
                    )
                  )
                )
              ),

              //Expiration Date
              Padding(
                padding:EdgeInsets.all(16.0),
                child:TextFormField(
                  keyboardType:TextInputType.number,
                  controller: _expirationCardController, 
                  decoration:InputDecoration(
                    hintText:'Expiration Date', 
                    labelText: 'Expiration Date',
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
                    )
                  )
                )
              ),
              
              //Security Code 
              Padding(
                padding:EdgeInsets.all(16.0),
                child:TextFormField(
                  keyboardType:TextInputType.number,
                  controller: _securityCardController, 
                  decoration:InputDecoration(
                    hintText:'Security Code', 
                    labelText: 'Security Code',
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
                    )
                  )
                )
              ),

              Container(
                  height: 55,
                  child:RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text('Process', 
                      style:TextStyle(color:Colors.white,
                      fontSize:18.0)
                    ),
                    onPressed: (){
                      //Get Card Type and Validity Data As Map -@param Card Number
                      // Map cardData = CreditCardValidator.getCard(_cardNumberController.text);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Mainpage()));
                      setState(() {
                        //Set Card Type and Validity
                        // cardType = cardData[CreditCardValidator.cardType];                        
                        // isValid = cardData[CreditCardValidator.isValidCard];
                      });
                    },
                  ),
              ),
            ],
          )
        )
      ),     
    );
  }

 
}  