import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/models/activity.dart';

import '../controller/get_users_liked.dart';

class ActivityLikesDialog extends StatefulWidget {
  const ActivityLikesDialog(this.activity, {super.key});
  final Activity activity;
  @override
  State<ActivityLikesDialog> createState() => _ActivityLikesDialogState();
}

class _ActivityLikesDialogState extends State<ActivityLikesDialog> {
  List<String> usersLikes = [];
  @override
  void initState() {
    super.initState();
    usersLikes = UsernamesWhoLikedRetriever()
        .callGetUsersWhoLiked(widget.activity.activityId.toString());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UsernamesWhoLikedRetriever()
          .getUsersWhoLiked(widget.activity.activityId.toString()),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Flexible(
              child: ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: 280,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: bgColor(), shape: BoxShape.circle),
                        height: 40,
                        width: 40,
                        child: Center(
                          child: Text(
                            snapshot.data![index][0],
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          snapshot.data![index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ));
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
