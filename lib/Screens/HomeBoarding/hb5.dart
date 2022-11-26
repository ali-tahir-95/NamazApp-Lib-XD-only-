import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Auth/SignUpScreen.dart';

class HB5 extends StatefulWidget {
  const HB5({super.key});

  @override
  State<HB5> createState() => _HB5State();
}

class _HB5State extends State<HB5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
              top: 50,
              left: 40,
              child: Text(
                "we are not\ncategorizing muslims\nwe are working as\na helping aid",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              )),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              "assets/images/bottomM.svg",
            ),
          ),
          Positioned(
            bottom: 120,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 70,
              width: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(40, 75, 99, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Get.to(Signup());
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
