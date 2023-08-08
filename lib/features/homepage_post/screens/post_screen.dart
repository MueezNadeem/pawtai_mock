import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/widgets/bottom_navbar.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_appbar.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_button.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_user_details.dart';

import '../widgets/post_textbox.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late TextEditingController postController;

  @override
  void initState() {
    super.initState();
    postController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PostAppBar(postController),
      bottomNavigationBar: const BottomNavbar(1),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const PostUserDetails(),
          PostTextBox(postController),
          const PostButton()
        ]),
      ),
    );
  }
}
