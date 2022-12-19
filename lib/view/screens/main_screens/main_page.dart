import 'package:flutter/material.dart';
import 'package:pishtaz/view/screens/main_screens/home_main_pages/home_page_screens.dart';
import 'package:pishtaz/view/screens/main_screens/notifications_page/notification_main_page.dart';
import 'package:pishtaz/view/screens/main_screens/profile_main_pages/profile_main_page.dart';
import 'package:pishtaz/view/screens/main_screens/task_main_pages/task_main_pages.dart';
import 'package:pishtaz/view/screens/main_screens/timer_main_pages/timer_main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexBottom = 2;
  Widget? appbar;
  var init = true;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (init) {
      init = false;
      appbar = HomepageScreen.homePageAppbar(context);
    }
  }

  void appbarSet(BuildContext ctx) {
    if (indexBottom == 0) {
      appbar = NotificationsMainPage.appbar(ctx);
    }
    if (indexBottom == 1) {
      appbar = TaskMainPage.appbar(ctx);
    }
    if (indexBottom == 2) {
      appbar = HomepageScreen.homePageAppbar(ctx);
    }
    if (indexBottom == 3) {
      appbar = TimerMainPage.appbar(ctx);
    }
    if (indexBottom == 4) {
      appbar = ProfileMainScreens.appbar(ctx);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar as AppBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottom,
        onTap: (value) {
          setState(() {
            indexBottom = value;
            appbarSet(context);
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
