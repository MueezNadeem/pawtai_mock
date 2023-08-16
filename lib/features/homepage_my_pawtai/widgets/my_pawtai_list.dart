import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/common/helpers/get_user_pawtai.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_dialog.dart';
import 'package:pawtai_mockup/features/homepage_my_pawtai/widgets/my_pawtai_profile.dart';

class MyPawtaiList extends StatefulWidget {
  const MyPawtaiList({
    super.key,
  });

  @override
  State<MyPawtaiList> createState() => _MyPawtaiListState();
}

class _MyPawtaiListState extends State<MyPawtaiList> {
  late User _user;
  bool check = false;
  @override
  void initState() {
    check = false;
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
        check = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
        child: FutureBuilder(
          future: UserPawtaiRetriever().getPawtai(_user.email!),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot.data!.length + 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  if (index < snapshot.data!.length) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return MyPawtaiProfile(snapshot.data![index]);
                          },
                        ));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              "assets/images/kabo-BHJs5TZ-Nt0-unsplash@3x.png"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(snapshot.data![index].name),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const MyPawtaiDialog();
                          },
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: bgColor(),
                              shape: BoxShape.circle,
                            ),
                            height: 150,
                            width: 150,
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 90,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Add New Pawtai"),
                          ),
                        ],
                      ),
                    );
                  }
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        )
        // child: GridView.count(
        //   crossAxisCount: 2,
        // children: [
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(context, MaterialPageRoute(
        //       builder: (context) {
        //         return const MyPawtaiProfile();
        //       },
        //     ));
        //   },
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Image.asset("assets/images/kabo-BHJs5TZ-Nt0-unsplash@3x.png"),
        //       const Padding(
        //         padding: EdgeInsets.all(8.0),
        //         child: Text("Fido"),
        //       ),
        //     ],
        //   ),
        // ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(context, MaterialPageRoute(
        //       builder: (context) {
        //         return const MyPawtaiProfile();
        //       },
        //     ));
        //   },
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Image.asset("assets/images/kabo-BHJs5TZ-Nt0-unsplash@3x.png"),
        //       const Padding(
        //         padding: EdgeInsets.all(8.0),
        //         child: Text("Fido"),
        //       ),
        //     ],
        //   ),
        // ),
        //   GestureDetector(
        //     onTap: () {
        //       showModalBottomSheet(
        //         context: context,
        //         builder: (context) {
        //           return const MyPawtaiDialog();
        //         },
        //       );
        //     },
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Container(
        //           decoration: BoxDecoration(
        //             color: bgColor(),
        //             shape: BoxShape.circle,
        //           ),
        //           height: 150,
        //           width: 150,
        //           child: const Icon(
        //             Icons.add_rounded,
        //             color: Colors.white,
        //             size: 90,
        //           ),
        //         ),
        //         const Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: Text("Add New Pawtai"),
        //         ),
        //       ],
        //     ),
        //   )
        // ],
        );
  }
}
