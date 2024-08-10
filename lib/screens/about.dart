import 'dart:developer';

import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  double scale = 1.0;
  late AnimationController _animationController;
  late Animation<double> animation;

  final String bio =
      "I’ve been at the forefront of delivering robust and user-centric mobile applications, seamlessly integrating front-end with backend technologies like Node Js and Firebase" *
          4;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    animation = Tween<double>(begin: 0, end: 3).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;

    double sectionHeight = height - (height * 0.07);
    return Container(
      color: Colors.grey.shade100,
      height: sectionHeight,
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Text(
            "Get To Know More",
            style: GoogleFonts.aBeeZee(),
          ),
          Text(
            "About Me",
            style: GoogleFonts.aBeeZee(
                letterSpacing: 4.0, fontSize: 46, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: height * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Image.asset(
                  'assets/images/profile2.png',
                  height: height * 0.4,
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Entry.offset(
                            duration: const Duration(milliseconds: 500),
                            yOffset: 45,
                            child: InkWell(
                              onHover: (val) {
                                log(val.toString());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.black)),
                                child: Column(
                                  children: [
                                    const Icon(Icons.badge),
                                    Text(
                                      "Experience",
                                      style: GoogleFonts.aBeeZee(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      "3+ Years",
                                      style: GoogleFonts.aBeeZee(
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Flutter Developer",
                                      style: GoogleFonts.aBeeZee(
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Expanded(
                          child: Entry(
                            duration: const Duration(milliseconds: 700),
                            yOffset: 45,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                children: [
                                  const Icon(Icons.badge),
                                  Text(
                                    "Experience",
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    "3+ Years",
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Flutter Developer",
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    Entry(
                      duration: const Duration(milliseconds: 900),
                      yOffset: 45,
                      child: TweenAnimationBuilder(
                          tween: Tween<double>(
                              begin: bio.length.toDouble(),
                              end: bio.length.toDouble()),
                          duration: Duration(milliseconds: bio.length * 2),
                          builder: (context, value, _) {
                            return Text(
                              bio.substring(0, value.toInt()),
                              style: GoogleFonts.azeretMono(),
                              // textAlign: TextAlign.center,
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
