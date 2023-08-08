import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/helpers/image_uploader.dart';

class PostButton extends StatefulWidget {
  const PostButton({super.key});

  @override
  State<PostButton> createState() => _PostButtonState();
}

class _PostButtonState extends State<PostButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: FloatingActionButton(
            backgroundColor: bgColor(),
            onPressed: () async {
              //TODO: Implement Image Handlng
              await ImageHandler.getImageFromGallery();
            },
            child: const Icon(Icons.photo_library),
          ),
        )
      ],
    );
  }
}
