import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_edit_profile.dart';

class MyPawtaiProfile extends StatefulWidget {
  const MyPawtaiProfile({super.key});

  @override
  State<MyPawtaiProfile> createState() => _MyPawtaiProfileState();
}

class _MyPawtaiProfileState extends State<MyPawtaiProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                      'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash@3x.png'),
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pawtai ID',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  'PT12345',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  'Fido',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pet Type',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Dog',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pet Breed',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'German Shephard',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pet Length',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      '54 CM',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pet Weight',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      '7 KG',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 60,
                      child: FilledButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(bgColor())),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const MyPawtaiEditProfile();
                              },
                            ));
                          },
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 60,
                      height: 60,
                      child: FilledButton.icon(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black87)),
                        onPressed: () async {
                          await FlutterShare.share(
                              title: 'Example share',
                              text: 'Example share text',
                              linkUrl: 'https://flutter.dev/',
                              chooserTitle: 'Example Chooser Title');
                        },
                        icon: const Icon(Icons.share),
                        label: const Text(
                          " Share this Pawtai",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
