import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:weekday_selector/weekday_selector.dart';

class AddEventInput extends StatefulWidget {
  const AddEventInput({super.key});

  @override
  State<AddEventInput> createState() => _AddEventInputState();
}

class _AddEventInputState extends State<AddEventInput> {
  bool _recurring = true;
  String _option = "Weekly";
  final values = List.filled(7, true);
  @override
  void initState() {
    _option = "Weekly";
    _recurring = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Title",
                style: TextStyle(fontSize: 16, color: bgColor()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter title",
                        hintStyle:
                            const TextStyle(fontSize: 14, letterSpacing: 0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)))),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(fontSize: 16, color: bgColor()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          onTap: () {
                            showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030));
                          },
                          keyboardType: TextInputType.none,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "DD:MM:YY",
                              hintStyle: const TextStyle(
                                  fontSize: 14, letterSpacing: 0.2),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24)))),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 16, color: bgColor()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          onTap: () {
                            showTimePicker(
                                context: context,
                                initialTime:
                                    const TimeOfDay(hour: 0, minute: 0));
                          },
                          keyboardType: TextInputType.none,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "HH:MM",
                              hintStyle: const TextStyle(
                                  fontSize: 14, letterSpacing: 0.2),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24)))),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pawtai",
                style: TextStyle(fontSize: 16, color: bgColor()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Pawtai",
                        hintStyle:
                            const TextStyle(fontSize: 14, letterSpacing: 0.2),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24)))),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recurring Event?",
                style: TextStyle(fontSize: 16, color: bgColor()),
              ),
              Switch(
                activeColor: bgColor(),
                value: _recurring,
                onChanged: (value) {
                  setState(() {
                    _recurring = value;
                  });
                },
              )
            ],
          ),
        ),
        if (_recurring) recurringOptions()
      ],
    );
  }

  Widget recurringOptions() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    "Weekly",
                    style: TextStyle(fontSize: 16, color: bgColor()),
                  ),
                  leading: Radio(
                    fillColor: MaterialStatePropertyAll(bgColor()),
                    groupValue: _option,
                    onChanged: (value) {
                      setState(() {
                        _option = value!;
                      });
                    },
                    value: "Weekly",
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    "Monthly",
                    style: TextStyle(fontSize: 16, color: bgColor()),
                  ),
                  leading: Radio(
                    fillColor: MaterialStatePropertyAll(bgColor()),
                    groupValue: _option,
                    onChanged: (value) {
                      setState(() {
                        _option = value!;
                      });
                    },
                    value: "Monthly",
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Days",
            style: TextStyle(fontSize: 16, color: bgColor()),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              // child: TextField(
              //     onTap: () {

              //     },
              //     keyboardType: TextInputType.none,
              //     textAlign: TextAlign.center,
              //     decoration: InputDecoration(
              //         hintText: "Select Days of Week",
              //         hintStyle: const TextStyle(
              //             fontSize: 14,
              //             letterSpacing: 0.2,
              //             fontWeight: FontWeight.bold),
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(24)))),
              child: WeekdaySelector(
                selectedFillColor: bgColor(),
                onChanged: (int day) {
                  setState(() {
                    final index = day % 7;
                    values[index] = !values[index];
                  });
                },
                values: values,
              )),
        ],
      ),
    );
  }
}
