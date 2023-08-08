import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageHandler {
  static Future<File> getImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }
    return File("");
  }

  static Future<File> getImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      return File(image.path);
    }
    return File("");
  }
}
