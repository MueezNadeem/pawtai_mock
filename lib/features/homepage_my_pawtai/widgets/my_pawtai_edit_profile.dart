import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class MyPawtaiEditProfile extends StatefulWidget {
  const MyPawtaiEditProfile({super.key});

  @override
  State<MyPawtaiEditProfile> createState() => _MyPawtaiEditProfileState();
}

class _MyPawtaiEditProfileState extends State<MyPawtaiEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    elevation: MaterialStatePropertyAll(6),
                    backgroundColor: MaterialStatePropertyAll(bgColor())),
                onPressed: () {},
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 80,
          )
        ]),
      ),
    );
  }
}
