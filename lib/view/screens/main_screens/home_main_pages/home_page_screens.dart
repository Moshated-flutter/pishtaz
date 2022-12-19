import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  static Widget homePageAppbar(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 2),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'مبین کریمی',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Image.asset(
                  'assets/images/dummyProfilePicture.png',
                  scale: 4,
                  fit: BoxFit.fill,
                ),
                radius: 20,
              ),
            ],
          ),
        ),
      ],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications_none_outlined,
          size: 30,
          color: Colors.black,
        ),
      ),
      iconTheme: Theme.of(context).iconTheme,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
