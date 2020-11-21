import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:pl/Screens/History.dart';
import 'package:pl/Screens/Setting.dart';
import 'package:pl/Screens/Bodymainpage.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = [
    BodyMainPage(),
    HistoryPage(),
    SettingPage(),
    
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.blueAccent[700],
      // appBar: AppBar(
      //   title: Text('Professional Laundry'),
      // ),
      body: _widgetOptions.elementAt(_currentIndex),
      
      bottomNavigationBar: BottomNavigationBar(

        items: [
           BottomNavigationBarItem(
              icon: Icon(Icons.outlet_rounded),
              // ignore: deprecated_member_use
              title: Text("Order"),
              backgroundColor: Colors.black),

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
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.monetization_on),
          //     // ignore: deprecated_member_use
          //     title: Text("Price"),
          //     backgroundColor: Colors.black),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.question_answer),
          //     // ignore: deprecated_member_use
          //     title: Text("Help"),
          //     backgroundColor: Colors.black),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });

          // _widgetOptions.elementAt(_currentIndex);
        }
      ),
    );
  }

}