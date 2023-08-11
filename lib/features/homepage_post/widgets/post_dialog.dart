import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/helpers/get_user_pawtai.dart';
import 'package:pawtai_mockup/common/models/pawtai.dart';

class PostDialog extends StatefulWidget {
  const PostDialog(this.user, {super.key});
  final User user;
  @override
  State<PostDialog> createState() => _PostDialogState();
}

class _PostDialogState extends State<PostDialog> {
  late List<Pawtai> userPawtai;

  @override
  void initState() {
    super.initState();
    userPawtai = UserPawtaiRetriever().callGetPawtai(widget.user.email!);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 160,
          child: FutureBuilder(
            future: UserPawtaiRetriever().getPawtai(widget.user.email!),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: ListTile(
                          leading: Container(
                              width: 50,
                              height: 50,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                  'assets/images/kabo-BHJs5TZ-Nt0-unsplash-2.png')),
                          title: Text(snapshot.data![index].name),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
            // child: ListView.builder(
            //   itemCount: 8,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: const EdgeInsets.all(10.0),
            //       child: Card(
            //         child: ListTile(
            //           leading: Container(
            //               width: 50,
            //               height: 50,
            //               decoration: const BoxDecoration(shape: BoxShape.circle),
            //               child: Image.asset(
            //                   'assets/images/kabo-BHJs5TZ-Nt0-unsplash-2.png')),
            //           title: Text("Pawtai $index"),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ),
        ),
      ),
    );
  }
}
