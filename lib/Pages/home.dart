// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:isocial/components/Post.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('home page'),
      ),
      child: CarouselSlider(
        options: CarouselOptions(height: double.infinity,scrollDirection: Axis.vertical),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: CupertinoColors.activeBlue),
                  child: const Post_Item()
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
