import 'package:flutter/material.dart';
import 'package:pishtaz/view/screens/main_screens/profile_main_pages/account_editing_screen.dart';

class ProfileMainScreens extends StatefulWidget {
  const ProfileMainScreens({super.key});

  static Widget appbar(BuildContext ctx) {
    return AppBar(
      backgroundColor: Theme.of(ctx).scaffoldBackgroundColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            top: 1,
          ),
          child: Row(
            children: [
              Text(
                'مبین کریمی',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                backgroundColor: Theme.of(ctx).primaryColor,
                radius: 30,
                child: Image.asset(
                  'assets/images/dummyProfilePicture.png',
                  scale: 3,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  State<ProfileMainScreens> createState() => _ProfileMainScreensState();
}

class _ProfileMainScreensState extends State<ProfileMainScreens> {
  var notificationON = false;
  var emailnotificationON = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 8,
            right: 8,
            bottom: 8,
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AccountEditingScreen.route);
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  'حساب کاربری',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                value: notificationON,
                onChanged: (value) {
                  setState(() {
                    notificationON = value;
                  });
                },
                activeColor: Theme.of(context).primaryColor,
              ),
              const Text('دریافت نوتیفیکشن'),
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                value: emailnotificationON,
                onChanged: (value) {
                  setState(() {
                    emailnotificationON = value;
                  });
                },
                activeColor: Theme.of(context).primaryColor,
              ),
              const Text('دریافت ایمیل'),
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  'پیشنهادات',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  'درباره ما',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  'خروج از حساب کاربری',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
