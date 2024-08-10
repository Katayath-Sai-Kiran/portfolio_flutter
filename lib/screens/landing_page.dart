import 'dart:developer';
import 'dart:html' as html;

import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sai_kiran_sportfolio/screens/about.dart';
import 'package:sai_kiran_sportfolio/screens/footer.dart';

import 'packages.dart';
import 'projects.dart';

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
                  Header(height: height),
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

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
      ],
    );
  }
}
