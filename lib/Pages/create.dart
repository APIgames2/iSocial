import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:isocial/functions/send_post.dart';
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
        var uuid = const Uuid();
        final ref = storage.ref().child('images').child(uuid.v4());
        await ref.putFile(file!);

        // Récupérer l'URL de l'image
        final imageUrl = await ref.getDownloadURL();
        
        // Utiliser l'URL de l'image comme nécessaire
        print('URL de l\'image : $imageUrl');
        var uuid_new = const Uuid().v4();
        await send_post(imageUrl,"$uuid_new");
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
              onPressed: _pick_file,
              child: const Text("pick file"),
            ),
            CupertinoButton.filled(
              onPressed: _send_file,
              child: const Text("envoyer la photo"),
            ),
          ],
        ),
      ),
    );
  }
}
