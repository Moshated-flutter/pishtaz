import 'package:flutter/material.dart';
import 'package:pishtaz/view/screens/log/login%20widgets/animations/changeAnimation.dart';
import 'package:pishtaz/view/screens/log/login%20widgets/animations/helper_funtions.dart';
import 'package:pishtaz/view/screens/log/login%20widgets/texts/bottomText.dart';
import 'package:pishtaz/view/screens/log/login%20widgets/texts/topText.dart';

enum Screens {
  createAccount,
  login,
}

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent>
    with TickerProviderStateMixin {
  final formkeyEmialLog = GlobalKey<FormState>();
  final formkeyEmialSign = GlobalKey<FormState>();
  final formkeyNumber = GlobalKey<FormState>();
  // final formkeyPasswordLog = GlobalKey<FormState>();
  // final formkeyPasswordSing = GlobalKey<FormState>();
  final formkeyUser = GlobalKey<FormState>();

  late final List<Widget> createAcounntWidget;
  late final List<Widget> loginWidgets;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero);
    loginWidgets = [
      inputField(
        'شماره موبایل یا ایمیل ',
        Icons.person,
        false,
        formkeyEmialLog,
      ),
      customButton('ثبت نام'),
    ];
    createAcounntWidget = [
      inputField(
        'نام و نام خانوادگی',
        Icons.person_outline,
        false,
        formkeyUser,
      ),
      inputField(
        'شماره موبایل',
        Icons.phone_android,
        false,
        formkeyNumber,
      ),
      inputField(
        'ایمیل (اختیاری)',
        Icons.email_outlined,
        false,
        formkeyEmialSign,
      ),
      customButton('ورود'),
    ];
    ChangeAnimations.initialze(
      vsync: this,
      createAccountItem: createAcounntWidget.length,
      loginItems: loginWidgets.length,
    );
    for (var i = 0; loginWidgets.length > i; i++) {
      loginWidgets[i] = HelperFunction.wrapWithAnimationBuilder(
        animation: ChangeAnimations.loginAnime[i],
        child: loginWidgets[i],
      );
    }
    for (var i = 0; createAcounntWidget.length > i; i++) {
      createAcounntWidget[i] = HelperFunction.wrapWithAnimationBuilder(
        animation: ChangeAnimations.createAccuontAnime[i],
        child: createAcounntWidget[i],
      );
    }
  }

  Widget customButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
      child: Container(
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget inputField(
    String hint,
    IconData iconData,
    bool obscure,
    GlobalKey<FormState> formkey,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 55,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: Form(
            key: formkey,
            child: TextFormField(
              textAlign: TextAlign.right,
              validator: (value) {
                if (hint == 'Email') {
                  if (value!.isEmpty) {
                    return 'This field cant be empty ';
                  }
                  if (!value.contains('@')) {
                    return 'please enter a valid value';
                  }
                }
                if (hint == 'Password') {
                  if (value!.isEmpty) {
                    return 'This field cant be empty ';
                  }
                  if (value.length < 7) {
                    return 'please enter at least 7 characters';
                  }
                }
                if (hint == 'Name') {
                  if (value!.isEmpty) {
                    return 'This field cant be empty ';
                  }
                  if (value.length < 4) {
                    return 'please enter at least 4 characters';
                  }
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              onSaved: (newValue) {},
              obscureText: obscure,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: hint,
                prefixIcon: Icon(iconData),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 570,
          right: 50,
          child: TopText(),
        ), // Center(child: CircularProgressIndicator())

        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: loginWidgets,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: createAcounntWidget,
              ),
              Positioned(
                left: 130,
                child: BottomText(),
                bottom: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
