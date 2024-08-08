import 'dart:developer';
import 'dart:html' as html;

import 'package:entry/entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double _scrollPercentage = 0.0;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;
    final double currentScrollOffset = _scrollController.offset;
    setState(() {
      _scrollPercentage = (currentScrollOffset / maxScrollExtent) * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Positioned(
            //   top: height * 0.07,
            //   left: 0,
            //   right: 0,
            //   child: Center(
            //     child: Container(
            //       color: Colors.red,
            //       height: _scrollPercentage,
            //       width: 5,
            //     ),
            //   ),
            // ),
            Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 3,
                          child: Center(
                            child: Text(
                              'Sai Kiran',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "About",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 21,
                                      color: Colors.black,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Experience",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 21,
                                      color: Colors.black,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Projects",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 21,
                                      color: Colors.black,
                                    ),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Contact",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 21,
                                      color: Colors.black,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: const Column(
                        children: [
                          Home(),
                          About(),
                          Projects(),
                          Packages(),
                          Footer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(height: height * 0.25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/profile.png', height: height * 0.4),
            SizedBox(width: width * 0.1),
            Column(
              children: [
                Text(
                  'Hello i\'m',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sai Kiran',
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w900, fontSize: 52),
                ),
                Text(
                  'Flutter Developer',
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      letterSpacing: 3.0,
                      color: Colors.black45),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(color: Colors.black))),
                        child: Text(
                          'Download CV',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(width: 24),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(color: Colors.black))),
                        child: Text(
                          'Contact Info',
                          style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ))
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          html.window.open(
                              "https://www.linkedin.com/in/sai-kiran-katayath-6687941a5/",
                              '_blank');
                        },
                        icon: Image.asset(
                          "assets/icons/linkedin.png",
                          height: 32,
                        )),
                    const SizedBox(width: 12),
                    IconButton(
                        onPressed: () {
                          html.window.open(
                              " https://github.com/Katayath-Sai-Kiran",
                              '_blank');
                        },
                        icon: Image.asset(
                          "assets/icons/github.png",
                          height: 32,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: height * 0.25),

        // Container(
        //   height: scrollPercentage * 2.5,
        //   width: 5,
        //   color: Colors.red,
        // )
      ],
    );
  }
}

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

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(height: height * 0.1),
        Text(
          "Browse My Recent",
          style: GoogleFonts.aBeeZee(),
        ),
        Text(
          "Projects",
          style: GoogleFonts.aBeeZee(
              letterSpacing: 4.0, fontSize: 46, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: height * 0.15),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Image.asset("assets/images/truthcatcher.webp",
                        height: height * 0.25),
                    const SizedBox(height: 24),
                    Text(
                      "TruthCatcher",
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: width * 0.15,
                      child: Text(
                        "TruthCatcher is a tool to verify the truth in the moment.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window.open(
                                  "https://play.google.com/store/apps/details?id=com.truthcatcher.app",
                                  "_blank");
                            },
                            child: Text(
                              "Play Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            )),
                        const SizedBox(width: 24),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window.open(
                                  "https://apps.apple.com/in/app/truth-catcher/id6475279599",
                                  "_blank");
                            },
                            child: Text(
                              "App Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/aezo.png",
                      height: height * 0.25,
                      width: width * 0.15,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Aezo",
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: width * 0.15,
                      child: Text(
                        "Aezo is a specialised AI-integrated platform for Trade associations",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window.open(
                                  "https://play.google.com/store/apps/details?id=com.aezo.asia",
                                  "_blank");
                            },
                            child: Text(
                              "Play Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            )),
                        const SizedBox(width: 24),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window.open(
                                  "https://apps.apple.com/in/app/aezo/id6476479274",
                                  "_blank");
                            },
                            child: Text(
                              "App Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/neurally.webp",
                      height: height * 0.25,
                      width: width * 0.15,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "NeurallyMed",
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: width * 0.15,
                      child: Text(
                        "Your Personal Tutor for PLAB and UKMLA.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window.open(
                                  "https://play.google.com/store/apps/details?id=com.neurallymed.v1",
                                  "_blank");
                            },
                            child: Text(
                              "Play Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            )),
                        const SizedBox(width: 24),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(16),
                                )),
                            onPressed: () {
                              html.window
                                  .open("https://neurallymed.com/", "_blank");
                            },
                            child: Text(
                              "App Store",
                              style: GoogleFonts.aBeeZee(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: height * 0.1),
      ],
    );
  }
}

class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.grey.shade100,
      height: height,
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Text(
            "Browse My Recent",
            style: GoogleFonts.aBeeZee(),
          ),
          Text(
            "Packages",
            style: GoogleFonts.aBeeZee(
                letterSpacing: 4.0, fontSize: 46, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: height * 0.1),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          "assets/images/text_highlight.jpg",
                          width: width * 0.15,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Text \nHighlighter",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            letterSpacing: 4.0,
                            fontSize: 26,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: width * 0.15,
                        child: Text(
                          "Effortless Text Highlighting",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            html.window.open(
                                "https://pub.dev/packages/text_highlight_codespark",
                                "_blank");
                          },
                          child: Text(
                            "Pub.dev",
                            style: GoogleFonts.aBeeZee(color: Colors.black),
                          )),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset("assets/images/dropdown.png",
                            width: width * 0.15),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: width * 0.15,
                        child: Text(
                          "Dropdown Search",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              letterSpacing: 4.0,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: width * 0.15,
                        child: Text(
                          "A customizable Flutter widget for smooth, animated dropdown search and selection.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            html.window.open(
                                "https://pub.dev/packages/animated_dropdown_search_codespark",
                                "_blank");
                          },
                          child: Text(
                            "Pub.dev",
                            style: GoogleFonts.aBeeZee(color: Colors.black),
                          )),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          "assets/images/text_compare.png",
                          width: width * 0.15,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Text Compare \nScore",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                            letterSpacing: 4.0,
                            fontSize: 26,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: width * 0.15,
                        child: Text(
                          "Get accurate text similarity scores with Text Comparison Score.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () {
                            html.window.open(
                                "https://pub.dev/packages/animated_dropdown_search_codespark",
                                "_blank");
                          },
                          child: Text(
                            "Pub.dev",
                            style: GoogleFonts.aBeeZee(color: Colors.black),
                          )),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MultiWaveClipper extends CustomClipper<Path> {
  final int waveCount;
  final double waveHeight;

  MultiWaveClipper({this.waveCount = 20, this.waveHeight = 30});

  @override
  Path getClip(Size size) {
    final Path path = Path();
    double waveWidth = size.width / waveCount;
    double currentX = 0.0;

    path.lineTo(currentX, size.height);

    for (int i = 0; i < waveCount; i++) {
      double nextX = currentX + waveWidth;
      path.quadraticBezierTo(currentX + waveWidth / 4, size.height - waveHeight,
          nextX, size.height);
      currentX = nextX;
    }

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class LinearWaveClipper extends CustomClipper<Path> {
  final int waveCount;
  final double waveHeight;

  LinearWaveClipper({this.waveCount = 20, this.waveHeight = 30});

  @override
  Path getClip(Size size) {
    final Path path = Path();
    double waveWidth = size.width / waveCount;
    double currentX = 0.0;

    path.lineTo(currentX, size.height); // Start from bottom-left

    for (int i = 0; i <= waveCount; i++) {
      double nextX = currentX + waveWidth;
      path.quadraticBezierTo(currentX + waveWidth / 2, size.height - waveHeight,
          nextX, size.height);
      currentX = nextX;
    }

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class InvertedWaveClipper extends CustomClipper<Path> {
  final int waveCount;
  final double waveHeight;

  InvertedWaveClipper({this.waveCount = 10, this.waveHeight = 50});

  @override
  Path getClip(Size size) {
    final Path path = Path();
    double waveWidth = size.width / waveCount;
    double currentX = 0.0;

    // Start from top-left
    path.lineTo(currentX, 0);

    for (int i = 0; i <= waveCount; i++) {
      double nextX = currentX + waveWidth;
      path.quadraticBezierTo(
          currentX + waveWidth / 2,
          waveHeight, // Inverted wave height
          nextX,
          10);
      currentX = nextX;
    }

    // Draw to bottom-right
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

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
    Container(
      color: Colors.grey.shade900,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 100),
      child: Column(
        children: [
          Text(
            "dxfcgvhbjknl",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "dxfcgvhbjknl",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "dxfcgvhbjknl",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "dxfcgvhbjknl",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "dxfcgvhbjknl",
            style: GoogleFonts.aBeeZee(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
