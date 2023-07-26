import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:video_player/video_player.dart';

class ActivityItemVideo extends StatefulWidget {
  const ActivityItemVideo({super.key});

  @override
  State<ActivityItemVideo> createState() => _ActivityItemVideoState();
}

class _ActivityItemVideoState extends State<ActivityItemVideo> {
  late VideoPlayerController controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    );
    _initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
              'assets/images/karsten-winegeart-Qb7D1xw28Co-unsplash-1.png'),
        ),
        title: const Text("Video Box"),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (controller.value.isPlaying) {
                    controller.pause();
                  } else {
                    controller.play();
                  }
                },
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: VideoPlayer(controller)),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 4.0, bottom: 10.0),
                child: Row(
                  children: [
                    Text(
                      "2:30PM\t-\tMueez Nadeem",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/images/like (1).svg'),
                  Text(
                    2.toString(),
                    style: TextStyle(
                        color: bgColor(), fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2),
                    child: SvgPicture.asset('assets/images/comments.svg'),
                  ),
                  Text(
                    2.toString(),
                    style: TextStyle(
                        color: bgColor(), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
