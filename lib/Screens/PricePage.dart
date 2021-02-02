import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pl2/Screens/Mainpage.dart';


class PricePage extends StatefulWidget {
  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Price'),
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

      body:Container(
          child:Column(
            
            mainAxisAlignment:MainAxisAlignment.start,
            
            children:[
              Padding(
                padding:EdgeInsets.only(top:10),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.only(left:300),

                      child: Text('   Price',
                          style: TextStyle(
                              fontWeight:FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                          )
                      ),
                    ),
                  ],
                ),
              ),

            //Button Down Shirt
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/buttonDownShirt.jpg'),
                  Padding(
                    padding: EdgeInsets.only(left:10), 
                    child: Text('Button Down Shirt', 
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),


                  Padding(
                    padding:EdgeInsets.only(left:100),
                    child: Text('    3.00',
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),
                ],
              )
            ),

            //Pants
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                children:[
                  Image.asset('assets/images/pants.jpg'),
                    Padding(
                    padding: EdgeInsets.only(left:30), 
                    child: Text('Pants', 
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(left:190), 
                    child: Text('   6.00',
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),
                ]
              )
            ),

            //Jacket
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                children:[
                  Image.asset('assets/images/windjacket.jpg'),
                    Padding(
                    padding: EdgeInsets.only(left:15), 
                    child: Text('Wind Jacket', 
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(left:140), 
                    child: Text('   6.00',
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),
                ]
              )
            ),

            //Dress
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                children:[
                  Image.asset('assets/images/dress.jpg'),
                    Padding(
                    padding: EdgeInsets.only(left:15), 
                    child: Text('Dress', 
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(left:185), 
                    child: Text('   9.00',
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),
                ]
              )
            ),

            //Blouse 
             Padding(
              padding: EdgeInsets.only(top:20),
              child: Row(
                children:[
                  Image.asset('assets/images/blouse.jpg'),
                    Padding(
                    padding: EdgeInsets.only(left:15), 
                    child: Text('Blouse', 
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(left:180), 
                    child: Text('   5.00',
                                  style: TextStyle(
                                    fontWeight:FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15
                                  )
                                ),
                  ),
                ]
              )
            ),
          ]
        )
      )
    );
  }
}