import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'hb5.dart';

class HB4 extends StatefulWidget {
  const HB4({super.key});

  @override
  State<HB4> createState() => _HB4State();
}

class _HB4State extends State<HB4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: 350,
            left: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I want to",
                  style: TextStyle(
                      color: Color.fromRGBO(78, 104, 87, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w100),
                ),
                Card(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Rectangle 164.svg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Read Quran",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Card(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Rectangle 165.svg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Get daily inspiration",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Card(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Rectangle 164.svg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Let Imam track my prayers",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Card(
                  shadowColor: Colors.transparent,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/Rectangle 164.svg",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Read Islamic articles by scholars",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
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
                  Get.to(HB5());
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
