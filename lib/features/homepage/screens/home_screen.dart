import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage/screens/activity_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  late Color homeColor, bellColor, pawColor, calendarColor, logoColor;
  String appBarTitle = "Activity";
  final List<Widget> _options = [
    const ActivityScreen(),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
    homeColor = bgColor();
    bellColor = pawColor = calendarColor = logoColor = Colors.grey;
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor(),
        title: Text(appBarTitle),
      ),
      body: _options.elementAt(index),
      bottomNavigationBar: bottomNavBar(),
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
          appBarTitle = "Activity";
          homeColor = bgColor();
          bellColor = pawColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 1:
        setState(() {
          appBarTitle = "Post";
          pawColor = bgColor();
          homeColor = bellColor = calendarColor = logoColor = Colors.grey;
        });
        break;

      case 2:
        setState(() {
          appBarTitle = "Calendar";
          calendarColor = bgColor();
          bellColor = pawColor = homeColor = logoColor = Colors.grey;
        });

        break;

      case 3:
        setState(() {
          appBarTitle = "Notifications";
          bellColor = bgColor();
          homeColor = pawColor = calendarColor = logoColor = Colors.grey;
        });

        break;

      case 4:
        setState(() {
          appBarTitle = "My Pawtai";
          logoColor = bgColor();
          bellColor = pawColor = calendarColor = homeColor = Colors.grey;
        });
        break;
    }
  }
}
