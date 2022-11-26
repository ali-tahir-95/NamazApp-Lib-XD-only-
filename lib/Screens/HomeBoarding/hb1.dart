import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snowdream/Widgets/GlobalWidgets.dart';

import 'hb2.dart';

class HB1 extends StatefulWidget {
  const HB1({super.key});

  @override
  State<HB1> createState() => _HB1State();
}

class _HB1State extends State<HB1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 252, 246, 1),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: 500,
            left: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By continuing you agree to",
                  style: TextStyle(fontSize: 14),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "our",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        )),
                      ),
                      TextSpan(
                          text: "  terms and conditions",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            child: MosqueBG(),
          ),
          Positioned(
              bottom: 180,
              right: 20,
              child: NextButton(
                onPressed: () {
                  Get.to(HB2());
                },
              ))
        ]),
      ),
    );
  }
}
