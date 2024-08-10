import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/clippers.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.grey.shade100,
      width: width,
      child: ClipPath(
        clipper: InvertedWaveClipper(),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 100),
            color: Colors.blueGrey[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sai Kiran",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w900,
                        fontSize: 100,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/linkedin.png",
                                  height: 32,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/icons/github.png",
                                  height: 32,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Image.asset(
                          "assets/images/illu.png",
                          height: height * 0.2,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
