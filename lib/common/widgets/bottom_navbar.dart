import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_activity/screens/activity_screen.dart';
import 'package:pawtai_mockup/features/homepage_calendar/screens/calendar_screen.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/screens/my_pawtai_screen.dart';
import 'package:pawtai_mockup/features/homepage_notifications/screens/notifications_screen.dart';
import 'package:pawtai_mockup/features/homepage_post/screens/post_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar(this.idx, {super.key});
  final int idx;
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int index = 0;
  late Color homeColor, bellColor, pawColor, calendarColor, logoColor;
  late List<Widget> screens;
  @override
  void initState() {
    screens = [
      const ActivityScreen(),
      const PostScreen(),
      const CalendarScreen(),
      const NotificationsScreen(),
      const MyPawtaiScreen()
    ];
    toggleColor(widget.idx);

    index = 0;
    super.initState();
    // homeColor = bgColor();
    // bellColor = pawColor = calendarColor = logoColor = Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 25,
      currentIndex: widget.idx,
      onTap: (value) {
        setState(() {
          index = value;
        });
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => screens[index],
            ));
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
          //currentAppbar = activityAppbar();
          homeColor = bgColor();
          bellColor = pawColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 1:
        setState(() {
          // currentAppbar = PostAppBar();
          pawColor = bgColor();
          homeColor = bellColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 2:
        setState(() {
          // currentAppbar = CalendarAppbar();
          calendarColor = bgColor();
          bellColor = pawColor = homeColor = logoColor = Colors.grey;
        });

        break;

      case 3:
        setState(() {
          //currentAppbar = notificationsAppbar(context);
          bellColor = bgColor();
          homeColor = pawColor = calendarColor = logoColor = Colors.grey;
        });

        break;

      case 4:
        setState(() {
          // currentAppbar = myPawtaiAppbar(context, false);
          logoColor = bgColor();
          bellColor = pawColor = calendarColor = homeColor = Colors.grey;
        });
        break;
    }
  }
}
