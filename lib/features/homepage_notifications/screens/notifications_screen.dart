import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/widgets/bottom_navbar.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_appbar.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_list.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NotificationsAppBar(),
      bottomNavigationBar: BottomNavbar(3),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [NotificationsList()]),
        ),
      ),
    );
  }
}
