import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_dialog.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_profile.dart';

class MyPawtaiList extends StatelessWidget {
  const MyPawtaiList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyPawtaiProfile();
                },
              ));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/kabo-BHJs5TZ-Nt0-unsplash@3x.png"),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Fido"),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const MyPawtaiProfile();
                },
              ));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/kabo-BHJs5TZ-Nt0-unsplash@3x.png"),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Fido"),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const MyPawtaiDialog();
                },
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: bgColor(),
                    shape: BoxShape.circle,
                  ),
                  height: 150,
                  width: 150,
                  child: const Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 90,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Add New Pawtai"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
