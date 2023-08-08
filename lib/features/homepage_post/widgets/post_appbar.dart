import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_post/controller/add_post_controller.dart';

import '../../../common/colors/bg_color.dart';

class PostAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PostAppBar(
    this.postController, {
    super.key,
  });
  final TextEditingController postController;

  @override
  State<PostAppBar> createState() => _PostAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _PostAppBarState extends State<PostAppBar> {
  late User _user;
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
      });
    });
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: bgColor(),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Post",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          GestureDetector(
            onTap: () {
              AddPostController()
                  .callAddPost(widget.postController.text, _user.email!, "3");
              //TODO: Add Handler to get Pawtai
            },
            child: const Text(
              "Publish",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
