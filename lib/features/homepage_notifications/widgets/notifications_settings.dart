import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: bgColor(),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Reply Notifications",
                      style: TextStyle(color: bgColor(), fontSize: 16),
                    ),
                  ),
                  Switch(
                    activeColor: bgColor(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Like Notifications",
                      style: TextStyle(color: bgColor(), fontSize: 16),
                    ),
                  ),
                  Switch(
                    activeColor: bgColor(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Mention Notifications",
                      style: TextStyle(color: bgColor(), fontSize: 16),
                    ),
                  ),
                  Switch(
                    activeColor: bgColor(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Event Notifications",
                      style: TextStyle(color: bgColor(), fontSize: 16),
                    ),
                  ),
                  Switch(
                    activeColor: bgColor(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "New User Notifications",
                      style: TextStyle(color: bgColor(), fontSize: 16),
                    ),
                  ),
                  Switch(
                    activeColor: bgColor(),
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
