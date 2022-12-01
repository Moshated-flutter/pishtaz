import 'package:flutter/material.dart';
import 'package:pishtaz/screens/log/background/bottombackground.dart';
import 'package:pishtaz/screens/log/background/centerWidget.dart';
import 'package:pishtaz/screens/log/background/topbackground.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topbackgroundwidget(screensize.width),
          ),
          Positioned(
            top: 650,
            left: -250,
            child: bottombackgroun(screensize.width),
          ),
          Positioned(
            top: 450,
            left: -300,
            child: centerbackground(screensize.width),
          ),
        ],
      ),
    );
  }
}
