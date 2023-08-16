import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/models/pawtai.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/controller/edit_pawtai_handler.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/screens/my_pawtai_screen.dart';

class MyPawtaiEditProfile extends StatefulWidget {
  const MyPawtaiEditProfile(this.data, {super.key});
  final Pawtai data;
  @override
  State<MyPawtaiEditProfile> createState() => _MyPawtaiEditProfileState();
}

class _MyPawtaiEditProfileState extends State<MyPawtaiEditProfile> {
  late TextEditingController nameController;
  late TextEditingController typeController;
  late TextEditingController lengthController;
  late TextEditingController weightController;
  late TextEditingController breedController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    typeController = TextEditingController();
    breedController = TextEditingController();
    lengthController = TextEditingController();
    weightController = TextEditingController();

    nameController.text = widget.data.name;
    typeController.text = widget.data.petType;
    breedController.text = widget.data.petBreed;
    lengthController.text = widget.data.petLength.toString();

    weightController.text = widget.data.petWeight.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor(),
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Name",
                  style: TextStyle(color: bgColor(), fontSize: 14),
                ),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Pet Type",
                  style: TextStyle(color: bgColor(), fontSize: 14),
                ),
              ),
              TextField(
                controller: typeController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Pet Length",
                  style: TextStyle(color: bgColor(), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: lengthController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Pet Weight",
                  style: TextStyle(color: bgColor(), fontSize: 14),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: weightController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text(
                  "Pet Breed",
                  style: TextStyle(color: bgColor(), fontSize: 14),
                ),
              ),
              TextField(
                controller: breedController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(bgColor()),
                    elevation: const MaterialStatePropertyAll(6),
                    backgroundColor: MaterialStatePropertyAll(bgColor())),
                onPressed: () {
                  EditPawtai().updatePawtai(
                      widget.data.pawtaiID,
                      nameController.text,
                      typeController.text,
                      lengthController.text,
                      weightController.text,
                      breedController.text);
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const MyPawtaiScreen();
                    },
                  ));
                },
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 80,
          )
        ]),
      ),
    );
  }
}
