// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration:
              const InputDecoration(labelText: "First Name"),
              validator: (String value) {
              if (value.isEmpty) {
                return 'Please put a First Name';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
