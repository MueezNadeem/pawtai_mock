import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage/screens/home_screen.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_edit_profile.dart';
import 'package:pawtai_mockup/features/homepage_notifications/widgets/notifications_settings.dart';

import 'features/add_event/screens/add_event_screen.dart';
import 'features/homepage_my_pawtai/widgets/my_pawtai_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyPawtaiEditProfile());
  }
}
