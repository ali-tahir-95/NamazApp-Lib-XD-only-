import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class MosqueBG extends StatelessWidget {
  const MosqueBG({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/images/bottomM.svg",
    );
  }
}

class NextButton extends StatelessWidget {
  Function onPressed;
  NextButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      height: 80,
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(40, 75, 99, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () => onPressed(),
        child: const Icon(
          Icons.navigate_next,
          size: 40,
        ),
      ),
    );
  }
}

class Lantern extends StatefulWidget {
  const Lantern({super.key});

  @override
  State<Lantern> createState() => _LanternState();
}

class _LanternState extends State<Lantern> {
  VideoPlayerController? lantern;

  @override
  void initState() {
    super.initState();
    lantern = VideoPlayerController.asset("assets/images/lantern.mp4")
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((_) {
        lantern!.play();
      });
  }

  @override
  void dispose() {
    lantern!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: lantern != null && lantern!.value.isInitialized
            ? AspectRatio(
                aspectRatio: lantern!.value.aspectRatio,
                child: VideoPlayer(lantern!),
              )
            : Container(
                child: const Center(
                  child: CircularProgressIndicator(
                      color: Color.fromRGBO(40, 75, 99, 1)),
                ),
              ));
  }
}
