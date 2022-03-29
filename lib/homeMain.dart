import 'package:check_mate/utils/constants.dart';
import 'package:check_mate/friendList.dart';
import 'package:check_mate/notifications.dart';
import 'package:check_mate/signIn.dart';
import 'package:check_mate/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  final int index;

  const HomeMain({Key? key, this.index = 0}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _index = 0;

  List<NavModel> _menu = [
    NavModel(icon: Icon(Icons.home), title: 'Home'),
    NavModel(icon: Icon(Icons.chat_outlined), title: 'Chat'),
    NavModel(icon: Icon(Icons.notifications), title: 'Notification'),
    NavModel(icon: Icon(Icons.person), title: 'My Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;

    List<Widget> _screens = [
      SignIn(),
      FriendList(),
      Notifications(),
      SignIn(),
    ];

    return Scaffold(
      bottomNavigationBar: Container(
        height: h * 70,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: b * 10,
          unselectedFontSize: b * 10,
          selectedIconTheme: IconThemeData(size: b * 22),
          unselectedIconTheme: IconThemeData(size: b * 22),
          unselectedItemColor: terColor,
          currentIndex: _index,
          items: _menu.map((e) {
            return BottomNavigationBarItem(
              icon: e.icon,
              label: e.title,
            );
          }).toList(),
          onTap: (menuIndex) {
            setState(() {
              _index = menuIndex;
            });
          },
        ),
      ),
      body: _screens[_index],
    );
  }
}

class NavModel {
  Icon icon;
  String title;
  NavModel({required this.icon, required this.title});
}
