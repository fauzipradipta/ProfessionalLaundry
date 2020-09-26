
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opl/components/rounded_buttons.dart';
import 'package:opl/constant.dart';
import 'package:opl/screens/Welcome/components/background.dart';

class Body extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;    // This size provide us total width and height of our screen
    return Background(
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Text("Professional Laundry", style: TextStyle(fontWeight: FontWeight.bold), 
            ), 
            SizedBox(height:size.height * 0.03),
            SvgPicture.asset("professionallaundry\assets\images2\opl_logo.svg", 
            height: size.height * 0.45 ,
            ),
            SizedBox(height:size.height * 0.05),
            RoundedButton(
              text: "Login", 
              press: () {}, 
            ),
            RoundedButton(
              text: "Signup", 
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {}, 
            ),
          ],
        ),
      ),
    );
  }

}

