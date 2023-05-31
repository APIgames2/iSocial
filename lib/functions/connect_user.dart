// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

var signed_in = false;

Future<bool> connect_user(email, password) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );

    if (kDebugMode) {
      print("signed in !!");
      signed_in = true;
    }
    // ...
  } catch (e) {
    if (kDebugMode) {
      print("there was an error");
    }
    if (kDebugMode) {
      print(e.toString());
    }
  }
  return signed_in;
}
