import 'package:flutter/material.dart';
import 'package:sahakosh/widgets/curvepainter.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          )
        ],
      ),
    );
  }
}
