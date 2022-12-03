import 'package:flutter/material.dart';
import 'package:pishtaz/screens/log/login%20widgets/animations/changeAnimation.dart';
import 'package:pishtaz/screens/log/login%20widgets/animations/helper_funtions.dart';
import 'package:pishtaz/screens/log/login%20widgets/loginContent.dart';

class BottomText extends StatefulWidget {
  const BottomText({super.key});

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangeAnimations.bottomtextController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunction.wrapWithAnimationBuilder(
      animation: ChangeAnimations.bottomtextAnime!,
      child: Container(
        child: GestureDetector(
          onTap: () {
            if (!ChangeAnimations.isPlaying) {
              ChangeAnimations.currentScreen == Screens.createAccount
                  ? ChangeAnimations.forward()
                  : ChangeAnimations.reverse();
              ChangeAnimations.currentScreen =
                  Screens.values[1 - ChangeAnimations.currentScreen.index];
            }
          },
          behavior: HitTestBehavior.opaque,
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
              children: [
                TextSpan(
                  text: ChangeAnimations.currentScreen == Screens.createAccount
                      ? ' قبلا ثبت نام کردید؟ '
                      : ' تا حالا ثبت نام نکردی؟ ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                    text:
                        ChangeAnimations.currentScreen == Screens.createAccount
                            ? 'ورود '
                            : 'ثبت نام ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
