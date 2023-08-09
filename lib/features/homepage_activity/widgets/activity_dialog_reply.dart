import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_activity/controller/reply_handler.dart';
import 'package:pawtai_mockup/models/activity.dart';

import '../controller/get_user_replies.dart';

class ActivityReplyDialog extends StatefulWidget {
  const ActivityReplyDialog(
    this.activity,
    this.user, {
    super.key,
  });
  final Activity activity;
  final User user;

  @override
  State<ActivityReplyDialog> createState() => _ActivityReplyDialogState();
}

class _ActivityReplyDialogState extends State<ActivityReplyDialog> {
  late TextEditingController replyController;

  @override
  void initState() {
    super.initState();
    replyController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Image.asset(
                    'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-2.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(widget.activity.content),
              )
            ],
          ),
          FutureBuilder(
            future: UsernamesWhoLikedRetriever()
                .getUsersWhoReplied(widget.activity.activityId.toString()),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Flexible(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data![index].content),
                        subtitle: Text(
                          "${snapshot.data![index].timestamp}\t-\t${snapshot.data![index].username}",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: replyController,
              decoration: InputDecoration(
                  hintText: " Add a reply..",
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.8),
                      borderRadius: BorderRadius.circular(40))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    ReplyHandler().callReplyPost(
                        replyController.text, widget.activity, widget.user);
                  },
                  child: const Text(
                    "Add Reply",
                    style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
