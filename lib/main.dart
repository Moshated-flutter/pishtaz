import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pishtaz/view/screens/log/LoginScreen.dart';
import 'package:pishtaz/view/screens/main_screens/main_page.dart';
import 'package:pishtaz/view/screens/main_screens/profile_main_pages/account_editing_screen.dart';
import 'package:pishtaz/view/screens/splash_screen.dart';
import 'firebase_options.dart';

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
        iconTheme: IconThemeData(color: Colors.black, size: 40),
      ),
      home: FutureBuilder(
          future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          ),
          builder: (context, snapshotFirebase) {
            if (snapshotFirebase.connectionState == ConnectionState.done) {
              return HomePage();
            }
            return SplashScreen();
          }),
      routes: {
        AccountEditingScreen.route: (context) => AccountEditingScreen(),
      },
    );
  }
}
