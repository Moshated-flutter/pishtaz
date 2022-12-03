import 'package:flutter/cupertino.dart';

class HelperFunction {
  static Widget wrapWithAnimationBuilder({
    required Animation<Offset> animation,
    required Widget child,
  }) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (BuildContext context, Widget? child) {
        return FractionalTranslation(
          translation: animation.value,
          child: child,
        );
      },
    );
  }
}
