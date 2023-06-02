import 'package:flutter/cupertino.dart';

class Post_Item extends StatefulWidget {
  const Post_Item({Key? key, required this.post}) : super(key: key);
  final post;

  @override
  State<Post_Item> createState() => _Post_ItemState();
}

class _Post_ItemState extends State<Post_Item> {
  @override
  Widget build(BuildContext context) {
    if (widget.post == null) {
      print(widget.post);
      return CupertinoActivityIndicator();
    } else if (widget.post["images"] != null &&
        widget.post["images"]["url"] != null) {
      return Image.network(widget.post["images"]["url"]);
    } else {
      print(widget.post);
      return CupertinoActivityIndicator(); // Return a fallback widget if the required data is missing
    }
  }
}
