import 'package:flutter/material.dart';

class ProfileMainScreens extends StatefulWidget {
  const ProfileMainScreens({super.key});

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
                    notificationON = value;
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
