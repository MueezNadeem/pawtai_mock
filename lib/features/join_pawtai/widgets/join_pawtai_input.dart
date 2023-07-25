import 'package:flutter/material.dart';

import '../../../common/colors/bg_color.dart';

class JoinPawtaiInput extends StatefulWidget {
  const JoinPawtaiInput({super.key});

  @override
  State<JoinPawtaiInput> createState() => _JoinPawtaiInputState();
}

class _JoinPawtaiInputState extends State<JoinPawtaiInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: SizedBox(
          height: 60,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.pets,
                      color: bgColor(),
                    ),
                  ),
                  hintText: "Pet code*",
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ));
  }
}
