// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

class TrendData {
  final String id;

  TrendData(this.id);
}

Future<String?> get_posts() async {
  DatabaseReference trends = FirebaseDatabase.instance.ref('trends');
  DatabaseReference posts = FirebaseDatabase.instance.ref('posts');

  Completer<String?> completer = Completer<String?>();

  trends.onValue.listen((DatabaseEvent event) {
    final trendsData = event.snapshot.value as List<dynamic>?;
    final trendObjects = trendsData
        ?.map((data) => TrendData(data["id"].toString().trim()))
        .toList();
    print(trendObjects?[1].id.trim());

    posts.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>?;

      String? imageUrl = data?[trendObjects?[1].id.trim()]?["images"]?["url"];
      print("Le premier post est $imageUrl");
      completer.complete(imageUrl);
    });
  });

  return completer.future;
}
