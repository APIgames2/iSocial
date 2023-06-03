import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:isocial/components/PostItem.dart';



Future<List<Widget>> get_posts() async {
  FirebaseDatabase.instance.setPersistenceEnabled(true);
  List<dynamic> trendsId = [];
  List<Widget> postsItems = [];
  DatabaseReference trends = FirebaseDatabase.instance.ref('trends');
  DatabaseReference posts = FirebaseDatabase.instance.ref('posts');
  final snapshot = await trends.get();
  if (snapshot.exists && snapshot.value != null) {
    if (kDebugMode) {
      for (var id in snapshot.value as List<dynamic>) {
        print(id["id"].toString().trim());
        trendsId.add(id["id"].toString().trim());
        final post = await posts.child(id["id"].toString().trim()).get();
        print(post.value);
        postsItems.add(Post_Item(post: post.value));
      }
      print(trendsId);
      print(postsItems);
    }
  } else {
    print('No data available.');
  }
  return postsItems;
}

Future<List<dynamic>> search_posts() async {
  FirebaseDatabase.instance.setPersistenceEnabled(true);
  List<dynamic> trendsId = [];
  List<dynamic> images = [];
  DatabaseReference trends = FirebaseDatabase.instance.ref('trends');
  DatabaseReference posts = FirebaseDatabase.instance.ref('posts');
  final snapshot = await trends.get();
  if (snapshot.exists && snapshot.value != null) {
    if (kDebugMode) {
      for (var id in snapshot.value as List<dynamic>) {
        trendsId.add(id["id"].toString().trim());
        final post = await posts.child(id["id"].toString().trim()).get();
        if (post.value != null) {
          final imageUrl = (post.value as Map<dynamic, dynamic>)["images"]
              ?["url"] as String?;
          if (imageUrl != null) {
            print(imageUrl);
            images.add(imageUrl);
          }
        }
      }
    }
  } else {
    print('No data available.');
  }
  print("images are $images");
  return images;
}
