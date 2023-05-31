import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class Create_Page extends StatefulWidget {
  const Create_Page({Key? key}) : super(key: key);

  @override
  State<Create_Page> createState() => _Create_PageState();
}

class _Create_PageState extends State<Create_Page> {
  File? file;

  @override
  Widget build(BuildContext context) {
    void _pick_file() async {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (result != null) {
        setState(() {
          file = File(result.files.single.path ?? "");
        });
      }
    }

    void _send_file() async {
      if (file != null) {
        final storage = FirebaseStorage.instance;
        var uuid = Uuid();
        final ref = storage.ref().child('images').child(uuid.v4());
        await ref.putFile(file!);
      }
    }

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('create'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            if (file != null) Image.file(file!),
            CupertinoButton.filled(
              child: const Text("pick file"),
              onPressed: _pick_file,
            ),
            CupertinoButton.filled(
              child: const Text("envoyer la photo"),
              onPressed: _send_file,
            ),
          ],
        ),
      ),
    );
  }
}
