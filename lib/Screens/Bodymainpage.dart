import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:pl/Screens/History.dart';

class BodyMainPage extends StatefulWidget{

  // BodyMainPage({this.data});
  // // final FirebaseApp data;

  @override
  _BodyMainPageState createState() => _BodyMainPageState();
}
class  _BodyMainPageState extends State<BodyMainPage> {

  // final clothes = Clothes(
  //   // dateTime: DateFormat("dd/MM/yyyy - HH:mm:ss:S").format(DateTime.now())
  // );

  TextEditingController _buttonDownShirtController;
  TextEditingController _blouseController;
  TextEditingController _pantsController;
  TextEditingController _dressController;
  TextEditingController _windJacketController;

  DatabaseReference _ref; 
  final referenceData = FirebaseDatabase.instance;

  @override
  // ignore: must_call_super
  void initState(){
    _buttonDownShirtController = TextEditingController();
    _blouseController = TextEditingController();
    _pantsController = TextEditingController();
    _dressController = TextEditingController();
    _windJacketController = TextEditingController();

    _ref = FirebaseDatabase.instance.reference().child('Order');

  }

  //final _formKey = GlobalKey<FormState>();

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
                        child: TextFormField(
                          controller:  _buttonDownShirtController,
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
                           validator: (value){
                              if(value.isEmpty){
                                return 'Please enter a number';
                              }
                              return null;
                            }
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
                        child: TextFormField(
                          controller: _blouseController,
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
                           validator: (value){
                              if(value.isEmpty){
                                return 'Please enter a number';
                              }
                              return null;
                            }
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
                        child: TextFormField(
                          controller:  _pantsController,
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
                           validator: (value){
                              if(value.isEmpty){
                                return 'Please enter a number';
                              }
                              return null;
                            }
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
                        child: TextFormField(
                          controller:  _dressController,
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
                           validator: (value){
                              if(value.isEmpty){
                                return 'Please enter a number';
                              }
                              return null;
                            }
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
                          child: TextFormField(
                            controller:  _windJacketController,
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
                            validator: (value){
                              if(value.isEmpty){
                                return 'Please enter a number';
                              }
                              return null;
                            }
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
                         buttonDownShirtHolder : _buttonDownShirtController.text,
                         blouseHolder: _blouseController.text,
                         pantsHolder:  _pantsController.text,
                         dressHolder:  _dressController.text,
                         windJacketHolder:  _windJacketController.text,
                        )));

                      // Validate returns true if the form is valid, or false
                        // otherwise.
                        // if (_formKey.currentState.validate()) {
                        //       // If the form is valid, display a Snackbar.
                        //   Scaffold.of(context)
                        //  .showSnackBar(SnackBar(content: Text('Processing Data')));
                        //  }
                      },
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

   void saveOrder(){
      String buttondownshirt =  _buttonDownShirtController.text;
      String blouse =  _blouseController.text;
      String pants  =  _pantsController.text;
      String dress =  _dressController.text;
      String windjacket = _windJacketController.text;

    Map<String, String> order = {
      'Button Down Shirt': buttondownshirt, 
      'Blouse' : blouse, 
      'Pants'     : pants, 
      'Dress'  : dress, 
      'Wind Jacket'   : windjacket,
      
    };
    _ref.push().set(order).then((value) {
        Navigator.pop(context);
    });
  }
  
}
