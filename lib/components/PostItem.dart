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
      return const CupertinoActivityIndicator();
    } else if (widget.post["images"] != null &&
        widget.post["images"]["url"] != null) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(widget.post["images"]["url"]),
        )),
        child: const Column(
          children: [
            Spacer(),
            Stack(
              children: [Text("hi")],
            ),
            Spacer()
          ],
        ),
      );
    } else {
      print(widget.post);
      return const CupertinoActivityIndicator();
    }
  }
}
