import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Failures {
  final String errorMessage;

  Failures({required this.errorMessage});
}

// class FirebaseAuthErrors extends Failures{
//   FirebaseAuthErrors({required super.errorMessage});

//   factory FirebaseAuthErrors.fromFirebaseAuthExeption(FirebaseAuthException exception){
//     if (exception.code == 'user-not-found') {
//    return  Failures( errorMessage: 'No user found for that email.');
//   } else if (exception.code == 'wrong-password') {
//     Failures(errorMessage:  'Wrong password provided for that user.');
//   }
//   }
// }