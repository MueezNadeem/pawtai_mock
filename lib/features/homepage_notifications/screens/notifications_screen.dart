import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_list.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Column(children: [NotificationsList()]),
      ),
    );
  }
}
