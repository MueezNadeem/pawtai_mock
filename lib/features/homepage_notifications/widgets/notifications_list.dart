import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_dialog.dart';

class NotificationsList extends StatefulWidget {
  const NotificationsList({super.key});

  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 20,
      child: ListView.builder(
        itemCount: 16,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.grey.shade200,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return NotificationsDialog();
                      },
                    );
                  },
                  leading: Image.asset(
                    'assets/images/kabo-BHJs5TZ-Nt0-unsplash-2@2x.png',
                  ),
                  title: const Text("Hey it's time for Walk"),
                  subtitle: const Text("1 min ago"),
                ),
                const Divider(
                  thickness: 0.8,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
