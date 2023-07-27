import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_button.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_user_details.dart';

import '../widgets/post_textbox.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [PostUserDetails(), PostTextBox(), PostButton()]),
    );
  }
}
