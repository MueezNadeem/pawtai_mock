import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_activity/screens/activity_screen.dart';
import 'package:pawtai_mockup/features/homepage_calendar/widgets/calendar_appbar.dart';
import 'package:pawtai_mockup/features/homepage_post/screens/post_screen.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_appbar.dart';

import '../../homepage_calendar/screens/calendar_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  late AppBar currentAppbar;
  late Color homeColor, bellColor, pawColor, calendarColor, logoColor;
  final List<Widget> _options = [
    const ActivityScreen(),
    const PostScreen(),
    const CalendarScreen(),
  ];
  @override
  void initState() {
    currentAppbar = activityAppbar();
    index = 0;
    super.initState();
    homeColor = bgColor();
    bellColor = pawColor = calendarColor = logoColor = Colors.grey;
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentAppbar,
      body: _options.elementAt(index),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  AppBar activityAppbar() {
    return AppBar(
      backgroundColor: bgColor(),
      title: const Text("Activity"),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      elevation: 25,
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
          toggleColor(value);
        });
      },
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: SvgPicture.asset(
            colorFilter: ColorFilter.mode(homeColor, BlendMode.srcIn),
            'assets/images/Path 2.svg',
            width: 25,
            height: 25,
          ),
        ),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              colorFilter: ColorFilter.mode(pawColor, BlendMode.srcIn),
              'assets/images/Mask Group 253.svg',
              width: 25,
              height: 25,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              colorFilter: ColorFilter.mode(calendarColor, BlendMode.srcIn),
              'assets/images/Mask Group 254.svg',
              width: 25,
              height: 25,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset(
              colorFilter: ColorFilter.mode(bellColor, BlendMode.srcIn),
              'assets/images/Mask Group 255.svg',
              width: 25,
              height: 25,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Image.asset(
              color: logoColor,
              'assets/images/Mask Group 256@3x.png',
              width: 25,
              height: 25,
            ))
      ],
    );
  }

  void toggleColor(int value) {
    switch (value) {
      case 0:
        setState(() {
          currentAppbar = activityAppbar();
          homeColor = bgColor();
          bellColor = pawColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 1:
        setState(() {
          currentAppbar = postAppbar();
          pawColor = bgColor();
          homeColor = bellColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 2:
        setState(() {
          currentAppbar = calendarAppbar();
          calendarColor = bgColor();
          bellColor = pawColor = homeColor = logoColor = Colors.grey;
        });

        break;

      case 3:
        setState(() {
          bellColor = bgColor();
          homeColor = pawColor = calendarColor = logoColor = Colors.grey;
        });

        break;

      case 4:
        setState(() {
          logoColor = bgColor();
          bellColor = pawColor = calendarColor = homeColor = Colors.grey;
        });
        break;
    }
  }
}
