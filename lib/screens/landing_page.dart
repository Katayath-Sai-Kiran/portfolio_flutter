import 'dart:developer';
import 'dart:html' as html;

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
                      child: Column(
                        children: [
                          Home(scrollPercentage: _scrollPercentage),
                          About(
                            percentage: _scrollPercentage,
                          ),
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
  const Home({super.key, required this.scrollPercentage});

  final double scrollPercentage;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height,
      child: Column(
        children: [
          SizedBox(height: height * 0.2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/profile.png', height: height * 0.5),
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
          // Container(
          //   height: scrollPercentage * 2.5,
          //   width: 5,
          //   color: Colors.red,
          // )
        ],
      ),
    );
  }
}

class About extends StatefulWidget {
  const About({super.key, required this.percentage});

  final double percentage;

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with SingleTickerProviderStateMixin {
  double scale = 1.0;
  late AnimationController _animationController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
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
    return SizedBox(
      height: sectionHeight,
      child: Column(
        children: [
          Text(
            "Get To Know More",
            style: GoogleFonts.aBeeZee(),
          ),
          Text(
            "About Me",
            style: GoogleFonts.aBeeZee(
                letterSpacing: 4.0, fontSize: 32, fontWeight: FontWeight.w800),
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
                        SizedBox(width: width * 0.02),
                        Expanded(
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
                        )
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "I’ve been at the forefront of delivering robust and user-centric mobile applications, seamlessly integrating front-end with backend technologies like Node Js and Firebase" *
                          4,
                      style: GoogleFonts.azeretMono(),
                      // textAlign: TextAlign.center,
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
