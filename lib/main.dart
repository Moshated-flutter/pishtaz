import 'package:flutter/material.dart';
import 'package:pishtaz/screens/log/LoginScreen.dart';
import 'package:pishtaz/screens/main_screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primaryColor: Colors.lime,
        iconTheme: IconThemeData(color: Colors.deepPurple, size: 40),
      ),
      home: HomePage(),
    );
  }
}
