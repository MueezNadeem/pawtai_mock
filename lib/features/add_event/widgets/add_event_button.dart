import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/add_event/controller/add_event_handler.dart';

class AddEventButton extends StatefulWidget {
  const AddEventButton(this.dC, this.tC, this.tiC, this.pC, this.recurring,
      this.option, this.values,
      {super.key});
  final TextEditingController dC;
  final TextEditingController tC;
  final TextEditingController tiC;
  final TextEditingController pC;
  final String option;
  final bool recurring;
  final List<bool> values;
  @override
  State<AddEventButton> createState() => _AddEventButtonState();
}

class _AddEventButtonState extends State<AddEventButton> {
  late TextEditingController dateController;

  late TextEditingController timeController;

  late TextEditingController titleController;

  late TextEditingController pawtaiController;

  late bool _recurring;
  late String _option;
  late List<bool> values;
  late User _user;
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
      });
    });

    dateController = widget.dC;
    timeController = widget.tC;
    titleController = widget.tiC;
    pawtaiController = widget.pC;

    _option = widget.option;
    _recurring = widget.recurring;
    values = widget.values;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(bgColor()),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
            onPressed: () {
              EventHandler().addEvent(
                  titleController.text,
                  dateController.text,
                  timeController.text,
                  "3",
                  _recurring,
                  _option,
                  values,
                  _user.email!);
              Navigator.pop(context);
            },
            child: const Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
