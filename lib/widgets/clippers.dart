import 'package:flutter/material.dart';

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

