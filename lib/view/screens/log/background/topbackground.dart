import 'dart:math' as math;
import 'package:flutter/material.dart';

Widget topbackgroundwidget(double screenwidth) {
  return Transform.rotate(
    angle: -35 * math.pi / 180,
    child: Container(
      width: 1.9 * screenwidth,
      height: 1.9 * screenwidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),
        gradient: const LinearGradient(
          begin: Alignment(-0.2, -1.3),
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(212, 124, 190, 207),
            Color.fromARGB(179, 104, 8, 188),
          ],
        ),
      ),
    ),
  );
}
