import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseManager{
  CollectionReference orders = FirebaseFirestore.instance.collection('Order');
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  Future<void> userSetup(String firstName, String lastName, String email, String password, String address, String address2 ) async{

    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();

    users.add({
      'First Name ': firstName,
      'Last Name'  : lastName,
      'Email   '   : email,
      'Password '  : password,
      'Address '  : address,
      'Address2'  : address2,
      'uid' : uid
    });
    return;
  }

  Future<void>orderSetup(String buttonDownShirt, String blouse, String pants, String dress, String windJackets) async{
    FirebaseAuth auth = FirebaseAuth.instance;

    orders.add({
      'Button Down Shirt' : buttonDownShirt,
      'Blouse' : blouse,
      'Pants' : pants,
      'dress' : dress,
      'Wind Jacket' : windJackets,
    });
    return ;
  }

  // getData() async{
  //   return await FirebaseFirestore.instance.collection('orders').get();
  //
  // }
  // Future getOrderList() async{
  //   List orderList = [];
  //   try{
  //     await orders.get().then((querySnapshot){
  //       querySnapshot.docs.forEach((element){
  //         orderList.add(element.data);
  //       });
  //     });
  //   }catch(e){
  //     print(e.toString());
  //     return null;
  //   }
  // }
}
