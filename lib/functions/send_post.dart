// ignore_for_file: non_constant_identifier_names

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

Future<void> send_post(String url,String uuid) async {
  var postToSend = {
    uuid: {
      "comments": [
        {
          "content": "super la fille mdr🤣!",
          "userid": "ZVmy1bjsXTR8nsPSPkeopkyx66B2"
        }
      ],
      "images": {"name": "La petite fille bizzare", "url": url},
      "likes": 0,
      "private": true,
      "founder": "C1vSgvziEVdrmPRzZXP75MJ7Qvj2",
      "users": ["C1vSgvziEVdrmPRzZXP75MJ7Qvj2"]
    }
  };

  DatabaseReference starCountRef = FirebaseDatabase.instance.ref('trends');
  starCountRef.onValue.listen((DatabaseEvent event) {
    final data = event.snapshot.value;
    print(data);
  });

  DatabaseReference ref = FirebaseDatabase.instance.ref("posts");
  await ref.update(postToSend);
  DatabaseReference refi = FirebaseDatabase.instance.ref("trends");
  final snapshot = await refi.get();
  if (kDebugMode) {
    print(snapshot.children.length);
  }
  await refi.update({
    "${snapshot.children.length}" : {
      "id" : uuid
    }
  });
  
}
