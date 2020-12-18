import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:pl/Screens/History.dart';

class BodyMainPage extends StatefulWidget{
  _BodyMainPageState createState() => _BodyMainPageState();
}
class  _BodyMainPageState extends State<BodyMainPage> {

  // final clothes = Clothes(
  //   // dateTime: DateFormat("dd/MM/yyyy - HH:mm:ss:S").format(DateTime.now())
  // );
  final buttonDownShirt = TextEditingController();
  final blouse = TextEditingController();
  final pants = TextEditingController();
  final dress = TextEditingController();
  final windJacket = TextEditingController();

   
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
                    "Put your order below",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
               
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  children:<Widget> [
                    Image.asset('assets/images/buttonDownShirt.jpg'),                   
                    Padding(
                      padding:  EdgeInsets.only(left:10),
                      child: Text('Button Down Shirt', 
                            style: TextStyle(
                              fontWeight:FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15
                            )
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:55),
                      child: SizedBox(                      
                        width: 100,
                        child: TextField(
                          controller: buttonDownShirt,
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
                    )
                  ],
                                  
                ),
              ),
              Padding(
                 padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Image.asset('assets/images/blouse.jpg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Blouse', 
                             style: TextStyle(
                              fontWeight:FontWeight.w600,
                              color: Colors.white,
                              fontSize: 15
                             )
                          ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 130),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          controller: blouse,
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
                    )
                  ],
                ),
              ),
              Padding(
                 padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Image.asset('assets/images/pants.jpg'),
                     Padding(
                       padding: EdgeInsets.only(left:30),
                       child: Text('Pants', 
                              style: TextStyle(
                                fontWeight:FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15
                              )
                            ),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(left: 130),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          controller: pants,
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
                    )
                  ],
                ),
              ),
              Padding(
                 padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    Image.asset('assets/images/dress.jpg'),
                     Padding(
                       padding: EdgeInsets.only(left:15),
                       child: Text('Dress', 
                              style: TextStyle(
                                fontWeight:FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15
                              )
                            ),
                     ),
                    Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: SizedBox(
                        width: 100,
                        child: TextField(
                          controller: dress,
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
                     Padding(
                       padding: EdgeInsets.only(left: 15),
                       child: Text('Wind Jacket', 
                              style: TextStyle(
                                fontWeight:FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15
                              )
                            ),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(left:110),
                      child: SizedBox(                  
                          width: 100,
                          child: TextField(
                            controller: windJacket,
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
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 1, left: 3),
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.blue[900]),
                          top: BorderSide(color: Colors.blue[900]),
                          right: BorderSide(color: Colors.blue[900]),
                          left: BorderSide(color: Colors.blue[900]),
                        )),                
                  ),
              ),
              
              //Order Button
              Padding(
                padding: EdgeInsets.only(top:15),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,        
                      onPressed: ()  {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HistoryPage(
                         buttonDownShirtHolder :buttonDownShirt.text,
                         blouseHolder: blouse.text,
                         pantsHolder: pants.text,
                         dressHolder: dress.text,
                         windJacketHolder: windJacket.text,
                        )));} ,
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

  
  
}
