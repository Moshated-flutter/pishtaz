import 'package:flutter/animation.dart';
import 'package:pishtaz/screens/log/login%20widgets/loginContent.dart';

class ChangeAnimations {
  static var isPlaying = false;
  static var currentScreen = Screens.createAccount;

  static AnimationController? toptextController;
  static Animation<Offset>? toptextAnime;
  static AnimationController? bottomtextController;
  static Animation<Offset>? bottomtextAnime;

  static List<AnimationController> createAccountController = [];
  static List<Animation<Offset>> createAccuontAnime = [];

  static List<AnimationController> loginController = [];
  static List<Animation<Offset>> loginAnime = [];

  static Animation<Offset> _createAnimtions({
    required Offset begin,
    required Offset end,
    required AnimationController parent,
  }) {
    return Tween(begin: begin, end: end).animate(
      CurvedAnimation(parent: parent, curve: Curves.easeIn),
    );
  }

  static void initialze({
    required TickerProvider vsync,
    required int loginItems,
    required int createAccountItem,
  }) {
    toptextController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );
    toptextAnime = _createAnimtions(
      begin: Offset.zero,
      end: const Offset(2.8, 0),
      parent: toptextController!,
    );
    bottomtextController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );
    bottomtextAnime = _createAnimtions(
      begin: Offset.zero,
      end: const Offset(0, 1.8),
      parent: bottomtextController!,
    );
    for (var i = 0; createAccountItem > i; i++) {
      createAccountController.add(
        AnimationController(
          vsync: vsync,
          duration: const Duration(milliseconds: 200),
        ),
      );
      createAccuontAnime.add(
        _createAnimtions(
          begin: Offset.zero,
          end: const Offset(1, 0),
          parent: createAccountController[i],
        ),
      );
    }
    for (var i = 0; loginItems > i; i++) {
      loginController.add(
        AnimationController(
          vsync: vsync,
          duration: const Duration(milliseconds: 200),
        ),
      );
      loginAnime.add(
        _createAnimtions(
          begin: const Offset(-1, 0),
          end: Offset.zero,
          parent: loginController[i],
        ),
      );
    }
  }

  static Future<void> forward() async {
    isPlaying = true;
    toptextController!.forward();
    await bottomtextController!.forward();
    for (final controller in [
      ...createAccountController,
      ...loginController,
    ]) {
      controller.forward();
      await Future.delayed(
        const Duration(
          milliseconds: 50,
        ),
      );
    }
    bottomtextController!.reverse();
    await toptextController!.reverse();
    isPlaying = false;
  }

  static Future<void> reverse() async {
    isPlaying = true;
    toptextController!.forward();
    await bottomtextController!.forward();
    for (final controller in [
      ...loginController.reversed,
      ...createAccountController.reversed,
    ]) {
      controller.reverse();
      await Future.delayed(
        const Duration(milliseconds: 50),
      );
    }
    bottomtextController!.reverse();
    await toptextController!.reverse();
    isPlaying = false;
  }
}
