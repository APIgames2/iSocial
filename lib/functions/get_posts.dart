// ignore_for_file: void_checks

import 'package:firebase_database/firebase_database.dart';

Future <void> get_posts() async {
  var dataapp;
  DatabaseReference database = FirebaseDatabase.instance.ref('posts');
  database.onValue.listen((DatabaseEvent event) {
    final data = event.snapshot.value;
    print(data);
    dataapp = data;
  });
  return dataapp;
}
