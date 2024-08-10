import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

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
