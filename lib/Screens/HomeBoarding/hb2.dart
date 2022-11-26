import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'hb3.dart';

class HB2 extends StatefulWidget {
  const HB2({super.key});

  @override
  State<HB2> createState() => _HB2State();
}

class _HB2State extends State<HB2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: SafeArea(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on,
                size: 150,
                color: Color.fromRGBO(78, 104, 87, 1),
              ),
              Text(
                "Allow Imam to get your location\n          to find nearby Masjid,\n                 Exact Qibla etc",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(),
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
                  Get.to(
                    () => const HB3(),
                  );
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
