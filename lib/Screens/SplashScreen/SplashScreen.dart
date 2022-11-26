import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../HomeBoarding/hb1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to(
          () => const HB1(),
        );
      },
    );
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset("assets/images/spicon.svg"),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset("assets/images/bottomM.svg"),
          )
        ],
      ),
    );
  }
}
