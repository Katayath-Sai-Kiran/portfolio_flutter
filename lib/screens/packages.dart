import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.grey.shade100,
      // height: height,
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
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
                    // const SizedBox(height: 24),
                    // const SizedBox(height: 24),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              SizedBox(
                width: width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Text Highlighter",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Effortless Text Highlighting",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "text_highlight_codespark is a versatile Flutter package designed for developers who want to highlight specific text patterns within a larger body of text. Whether you're building a code editor, a text search feature, or any application that requires dynamic text highlighting, this package offers a straightforward and efficient solution.",
                      style: GoogleFonts.aBeeZee(),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
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
              )
            ],
          ),
          SizedBox(height: height * 0.05),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  ],
                ),
              ),
              const SizedBox(width: 24),
              SizedBox(
                width: width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dropdown Search",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "A customizable Flutter widget for smooth, animated dropdown search and selection.",
                      // textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "animated_dropdown_search_codespark is a Flutter package that provides a sleek and customizable animated dropdown with search functionality. Ideal for developers looking to enhance their app's UI/UX, this package combines the ease of a dropdown menu with the power of a search feature, wrapped in smooth animations.",
                      style: GoogleFonts.aBeeZee(),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
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
          SizedBox(height: height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  ],
                ),
              ),
              const SizedBox(width: 24),
              SizedBox(
                width: width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Text Compare Score",
                      style: GoogleFonts.aBeeZee(
                          letterSpacing: 4.0,
                          fontSize: 26,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Get accurate text similarity scores with Text Comparison Score.",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "text_comparison_score_codespark is a powerful Flutter package designed for developers who need to compare and analyze text with precision. This package provides various algorithms to calculate the similarity or difference between two text strings, offering a match percentage score that can be used in diverse applications, from search engines to data validation.",
                      style: GoogleFonts.aBeeZee(),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(16),
                            )),
                        onPressed: () {
                          html.window.open(
                              "https://pub.dev/packages/text_comparison_score_codespark",
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
          SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
