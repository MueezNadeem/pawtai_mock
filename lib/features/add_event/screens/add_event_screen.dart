import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/widgets/back_navigation_button.dart';
import 'package:pawtai_mockup/features/add_event/widgets/add_event_button.dart';
import 'package:pawtai_mockup/features/add_event/widgets/add_event_input.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor(),
        leading: const BackNavigationButton(),
        title: const Text(
          "Add Event",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(children: [
          AddEventInput(),
          AddEventButton(),
        ]),
      ),
    );
  }
}
