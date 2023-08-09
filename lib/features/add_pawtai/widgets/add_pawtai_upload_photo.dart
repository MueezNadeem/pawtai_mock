import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/helpers/image_uploader.dart';

class AddPawtaiUploadPhoto extends StatefulWidget {
  const AddPawtaiUploadPhoto(this.imageFile, {super.key});
  final File imageFile;
  @override
  State<AddPawtaiUploadPhoto> createState() => _AddPawtaiUploadPhotoState();
}

//TODO: Handle Profile picture handling
class _AddPawtaiUploadPhotoState extends State<AddPawtaiUploadPhoto> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      children: [
        SimpleDialogOption(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(
                  Icons.camera_alt,
                  color: bgColor(),
                ),
              ),
              const Text(
                "Take Picture from Camera",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
          onPressed: () async {
            await ImageHandler.getImageFromCamera();
            setState(() {
              //  widget.imageFile = img;
            });
          },
        ),
        const Divider(
          height: 0.2,
          thickness: 0.5,
        ),
        SimpleDialogOption(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(color: bgColor(), Icons.photo_library_rounded),
              ),
              const Text(
                "Upload Image from Gallery",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
          onPressed: () async {
            await ImageHandler.getImageFromGallery();
            setState(() {
              //widget.imageFile = img;
            });
          },
        ),
      ],
    );
  }
}
