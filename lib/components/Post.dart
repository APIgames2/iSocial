// ignore_for_file: camel_case_types, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:isocial/functions/get_posts.dart';

class Post_Item extends StatefulWidget {
  const Post_Item({super.key});

  @override
  State<Post_Item> createState() => _Post_ItemState();
}

class _Post_ItemState extends State<Post_Item> {
  @override
  void initState() {
    var posts = get_posts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("it is a post !"),
    );
  }
}
