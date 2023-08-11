import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_dialog.dart';

class PostUserDetails extends StatefulWidget {
  const PostUserDetails(this.user, {super.key});
  final User user;
  @override
  State<PostUserDetails> createState() => _PostUserDetailsState();
}

class _PostUserDetailsState extends State<PostUserDetails> {
  List<String> list = ['Fido', 'Ludo', 'Kido'];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor(),
            ),
            child: const Center(
                child: Text(
              "M",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white),
            )),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 4),
                child: Text(
                  widget.user.email!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border.fromBorderSide(BorderSide()),
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 4.0, right: 4, top: 2, bottom: 2),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PostDialog(widget.user);
                          },
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.pets,
                            size: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, right: 8),
                            child: Text("Fido"),
                          ),
                          Icon(
                            Icons.arrow_downward,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
