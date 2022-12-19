// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget centerbackground(double screenwidth) {
  return Container(
    width: 1 * screenwidth,
    height: 1 * screenwidth,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment(0, -1.1),
        end: Alignment(0.7, 0.8),
        colors: [
          Color.fromARGB(164, 75, 232, 180),
          Color.fromARGB(188, 92, 180, 207),
        ],
      ),
    ),
  );
}
