import 'package:flutter/material.dart';
import 'package:pishtaz/screens/main_screens/profile_screens/main_profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexBottom = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 2),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Theme.of(context).primaryColor,
                ),
                height: 20,
                width: 45,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
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
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottom,
        onTap: (value) {
          setState(() {
            indexBottom = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: Theme.of(context).iconTheme,
        backgroundColor: Theme.of(context).primaryColor,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
            ),
            label: 'اطلاعیه',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_sharp),
            label: 'تکلیف',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'خانه',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'گزارش درسی',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'پروفایل',
          ),
        ],
      ),
      body: Column(
        children: [
          if (indexBottom == 4) const ProfileMainScreens(),
        ],
      ),
    );
  }
}
