import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'hb4.dart';

class HB3 extends StatefulWidget {
  const HB3({super.key});

  @override
  State<HB3> createState() => _HB3State();
}

class _HB3State extends State<HB3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: SafeArea(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 170,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(242, 254, 255, 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "06:15",
                    style: TextStyle(
                      fontSize: 66,
                      color: Color.fromRGBO(78, 104, 87, 1),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                child: Text(
                  "Allow us to set your Azaan time",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                child: Text(
                  "So,you never miss a prayer",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
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
                  Get.to(HB4());
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
