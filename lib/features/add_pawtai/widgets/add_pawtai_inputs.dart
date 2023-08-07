import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/features/add_pawtai/widgets/add_pawtai_upload_photo.dart';

import '../../../common/colors/bg_color.dart';

class AddPawtaiInput extends StatefulWidget {
  const AddPawtaiInput(this.pawtaiNameController, this.imageFile, {super.key});
  final TextEditingController pawtaiNameController;
  final File imageFile;
  @override
  State<AddPawtaiInput> createState() => _AddPawtaiInputState();
}

class _AddPawtaiInputState extends State<AddPawtaiInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AddPawtaiUploadPhoto(widget.imageFile);
                      },
                    );
                  },
                  icon: SvgPicture.asset('assets/images/Mask Group 13.svg'),
                  iconSize: 60,
                ),
                const Text(
                  "  Upload or\nTake photo",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: SizedBox(
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: TextField(
                    controller: widget.pawtaiNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.pets,
                          color: bgColor(),
                        ),
                      ),
                      hintText: "Pet name*",
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
