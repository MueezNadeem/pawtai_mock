// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pawtai_mockup/common/widgets/bottom_navbar.dart';
import 'package:pawtai_mockup/features/homepage_activity/widgets/activity_appbar.dart';
import 'package:pawtai_mockup/features/homepage_activity/widgets/activity_list_group_item.dart';
import 'package:pawtai_mockup/features/homepage_activity/widgets/activity_list_photo_item.dart';
import 'package:pawtai_mockup/features/homepage_activity/widgets/activity_list_video_item.dart';
import '../widgets/activity_list_item.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ActivityAppBar(),
      bottomNavigationBar: const BottomNavbar(0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "${DateFormat("MMMM").format(DateTime.now())} ${DateTime.now().day}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ActivityItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
