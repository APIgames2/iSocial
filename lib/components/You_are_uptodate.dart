// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';

class You_Are_UpToDate extends StatefulWidget {
  const You_Are_UpToDate({super.key});

  @override
  State<You_Are_UpToDate> createState() => _You_Are_UpToDateState();
}

class _You_Are_UpToDateState extends State<You_Are_UpToDate> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("vous êtes à jour !",style: TextStyle(fontSize: 20),),
            Icon(
              CupertinoIcons.check_mark_circled_solid,
              color: CupertinoColors.systemOrange,
            ),
          ],
        ),
      ],
    );
  }
}
