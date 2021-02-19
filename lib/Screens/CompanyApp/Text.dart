import 'package:cloud_firestore/cloud_firestore.dart';

class OrderPickedup{
  CollectionReference trackingOrder = FirebaseFirestore.instance.collection('Tracking Order');
  // CollectionReference orderProgress= FirebaseFirestore.instance.collection('Order on Progress');
  //String option;
  Future<void> orderConfirm(String receivedOrder) async{
    trackingOrder.add({
      'Order Received ' : receivedOrder
    });

    return;
  }

  Future<void> progressConfirm(String progressOrder) async{
    trackingOrder.add({
      'Order start wash ' : progressOrder
    });

    return;
  }

  Future<void> deliveredConfirm(String delivered) async{
    trackingOrder.add({
      'Has been delivered ' : delivered
    });

    return;
  }

// Future getOrderList()async{
//   List orderList = [];

//   try{
//     await trackingOrder.get().then((querySnapshot){
//         querySnapshot.docs.forEach((element){
//           orderList.add(element.data);
//         });
//     });
//   } catch(e){
//     print(e.toString());
//     return null;
//   }
// }

// Future updateTracking(String option, String uid) async {
//   return await trackingOrder.doc(uid).update({
//     'Order on Progress ': option
//   });
// }


// Future<void>updateOrderOnProgress(String option, String uid) async {
//    return await orderProgress.add({
//     'Order On Progress ' : option,
//   });
// }
}