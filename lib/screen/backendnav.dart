import 'package:flutter/material.dart';
import 'package:flutter_app/curved_navigation_bar.dart';
import 'package:flutter_app/userpeofile/userprof.dart';
import 'home.dart';
import 'upskill.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = "/bottomNavBar";
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyRoute(
      iconData: Icons.home,
      page: HomePage(),
    ),
    MyRoute(
      iconData: Icons.school,
      page: SkillPage(),
    ),
    MyRoute(
      iconData: Icons.account_circle,
      page: Home(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50,
        items: pages
          .map((p) => Icon(
          p.iconData,
          size: 30,
        ))
          .toList(),
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        }
      ),
      body: pages[_pageIndex].page,
    );
  }
}

class MyRoute{
  final IconData iconData;
  final Widget page;

  MyRoute({this.iconData, this.page});
}