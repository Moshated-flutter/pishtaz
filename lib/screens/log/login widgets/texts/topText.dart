import 'package:flutter/material.dart';
import 'package:pishtaz/screens/log/login%20widgets/animations/changeAnimation.dart';
import 'package:pishtaz/screens/log/login%20widgets/animations/helper_funtions.dart';
import 'package:pishtaz/screens/log/login%20widgets/loginContent.dart';

class TopText extends StatefulWidget {
  const TopText({super.key});

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangeAnimations.toptextAnime!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunction.wrapWithAnimationBuilder(
      animation: ChangeAnimations.toptextAnime!,
      child: Text(
        ChangeAnimations.currentScreen == Screens.createAccount
            ? 'ثبت نام'
            : 'ورود',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
