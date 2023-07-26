import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class ActivityItem extends StatefulWidget {
  const ActivityItem({super.key});

  @override
  State<ActivityItem> createState() => _ActivityItemState();
}

class _ActivityItemState extends State<ActivityItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
              'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-1.png'),
        ),
        title: const Text("1"),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    "2:30PM\t-\tMueez Nadeem",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/like (1).svg'),
                Text(
                  2.toString(),
                  style:
                      TextStyle(color: bgColor(), fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 2),
                  child: SvgPicture.asset('assets/images/comments.svg'),
                ),
                Text(
                  2.toString(),
                  style:
                      TextStyle(color: bgColor(), fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
