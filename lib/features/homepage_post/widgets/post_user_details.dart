import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/models/pawtai.dart';
import 'package:pawtai_mockup/features/homepage_post/widgets/post_dialog.dart';

import '../../../common/helpers/get_user_pawtai.dart';

class PostUserDetails extends StatefulWidget {
  const PostUserDetails(this.user, {super.key});
  final User user;
  @override
  State<PostUserDetails> createState() => _PostUserDetailsState();
}

class _PostUserDetailsState extends State<PostUserDetails> {
  List<String> list = ['Fido', 'Ludo', 'Kido'];
  late List<Pawtai> pawtaiList;
  @override
  void initState() {
    pawtaiList = UserPawtaiRetriever().callGetPawtai(widget.user.email!);

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
                      child: FutureBuilder(
                          future: UserPawtaiRetriever()
                              .getPawtai(widget.user.email!),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Row(
                                children: [
                                  const Icon(
                                    Icons.pets,
                                    size: 12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Text(snapshot.data!.first.name),
                                  ),
                                  const Icon(
                                    Icons.arrow_downward,
                                    size: 12,
                                  )
                                ],
                              );
                            } else {
                              return const CircularProgressIndicator(
                                strokeWidth: 0.5,
                              );
                            }
                          }
                          //  Row(
                          //   children: [
                          //     const Icon(
                          //       Icons.pets,
                          //       size: 12,
                          //     ),
                          //     Padding(
                          //       padding:
                          //           const EdgeInsets.only(left: 8.0, right: 8),
                          //       child: Text(pawtaiList.first.name),
                          //     ),
                          //     const Icon(
                          //       Icons.arrow_downward,
                          //       size: 12,
                          //     )
                          //   ],
                          // ),
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
