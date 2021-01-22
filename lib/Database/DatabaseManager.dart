// import 'package:cloud_firestore/cloud_firestore.dart';

// class DataManager{
//   final CollectionReferenece userList = Firestore.instance.collection('userInfo');

//   //Create user data to firebase
//   Future<void> createUserData(String firstName, String lastName, String email, String address, String address2, String uid ) async{

//     return await userList.document(uid).setData({
//       'First Name ': firstName,
//       'Last Name ' : lastName,
//       'Email ' : email,
//       'Address ' : address,
//       'Address 2' : address2
//     });
//   }

//   Future UpdateUserList(String firstName, String lastName, String email, String address, String address2, String uid ) async {
//     return await userList.document(uid).updateData({
//       'First Name ': firstName,
//       'Last Name ' : lastName,
//       'Email ' : email,
//       'Address ' : address,
//       'Address 2' : address2
//     });
//   }

//   Future getUserList() async{
//     List itemList = [];
//     try{
//       await userList.getDocuments().then((querySnapshot){
//         querySnapshot.documents.forEach((elements) {
//             itemList.add(elements.data);

//         });
//       });
//       return itemList;
//     } catch(e){
//       print(e.toString());
//       return null;
//     }
//   }
// }