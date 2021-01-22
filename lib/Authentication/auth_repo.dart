// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pl2/Database/DatabaseManager.dart';

// class Authentication{
//   final FirebaseAuth auth = FirebaseAuth.instance;

//   Future createNewUser(String firstName, String lastName, String email,String password, String address, String address2) async {
//     try {
//       AuthResult result = await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       FirebaseUser user = result.user;
//       await DatabaseManager().createUserData(
//           firstName, lastName, email, address, address, user.uid);
//       return user;
//     }catch(e) {
//       print(e.toString());
//     }
//   }

// // sign with email and password
//   Future loginUser(String email, String password) async {
//     try {
//       AuthResult result = await auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return result.user;
//     } catch (e) {
//       print(e.toString());
//     }
//   }

// // signout
//   Future signOut() async {
//     try {
//       return auth.signOut();
//     } catch (error) {
//       print(error.toString());
//       return null;
//     }
//   }
//}