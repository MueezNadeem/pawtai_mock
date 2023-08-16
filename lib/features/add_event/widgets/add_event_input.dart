import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:weekday_selector/weekday_selector.dart';

class AddEventInput extends StatefulWidget {
  const AddEventInput(this.dC, this.tC, this.tiC, this.pC, this.recurring,
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
  State<AddEventInput> createState() => _AddEventInputState();
}

class _AddEventInputState extends State<AddEventInput> {
  late DateTime? eventDate;
  late TextEditingController dateController;

  late TimeOfDay? eventTime;
  late TextEditingController timeController;

  late TextEditingController titleController;

  late TextEditingController pawtaiController;

  late bool _recurring;
  late String _option;
  late List<bool> values;

  @override
  void initState() {
    eventDate = DateTime.now();
    eventTime = TimeOfDay.fromDateTime(eventDate!);
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
                    controller: titleController,
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
                          readOnly: true,
                          onTap: () async {
                            DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030));
                            setState(() {
                              eventDate = picked;
                              dateController.text =
                                  DateFormat.yMMMEd().format(eventDate!);
                            });
                          },
                          controller: dateController,
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
                          readOnly: true,
                          controller: timeController,
                          onTap: () async {
                            TimeOfDay? time = await showTimePicker(
                                context: context,
                                initialTime:
                                    const TimeOfDay(hour: 0, minute: 0));
                            setState(() {
                              eventTime = time;
                              timeController.text = eventTime!.format(context);
                            });
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
