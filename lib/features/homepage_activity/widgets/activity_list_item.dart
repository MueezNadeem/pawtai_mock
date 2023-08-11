import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_activity/controller/like_handler.dart';
import 'package:pawtai_mockup/features/homepage_activity/controller/update_list_item.dart';
import 'package:pawtai_mockup/features/homepage_activity/widgets/activity_dialog_box.dart';
import 'package:pawtai_mockup/common/models/activity.dart';

class ActivityItem extends StatefulWidget {
  const ActivityItem(this.data, {super.key});
  final Activity data;

  @override
  State<ActivityItem> createState() => _ActivityItemState();
}

class _ActivityItemState extends State<ActivityItem> {
  late Activity currActivity = widget.data;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return ActivityDialogBox(currActivity);
            },
          );
        },
        leading: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
              'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-1.png'),
        ),
        title: Text(currActivity.content),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 10.0),
              child: Row(
                children: [
                  Text(
                    currActivity.timestamp,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() async {
                        await LikeHandler().handleLike(currActivity);

                        ListItemUpdate listItemUpdate = ListItemUpdate();
                        listItemUpdate.getLikes(currActivity).then((value) {
                          currActivity.setNumLikes(value);
                        });
                      });
                    },
                    child: SvgPicture.asset('assets/images/like (1).svg')),
                Text(
                  currActivity.numLikes.toString(),
                  style:
                      TextStyle(color: bgColor(), fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 2),
                  child: SvgPicture.asset('assets/images/comments.svg'),
                ),
                Text(
                  "0", //TODO: implement replies
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
