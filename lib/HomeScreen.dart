import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:makup_booking/HomeCardCategory.dart';
import 'package:makup_booking/HomeScreenFrag.dart';
import 'package:makup_booking/MyColors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:makup_booking/ProfileScreenFrag.dart';
import 'package:makup_booking/SplashScreen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int _bottomNavIndex = 2;
  final screens = [
    HomeScreenFrag(),
    ProfileScreenFrag(),
    HomeScreenFrag(),
    ProfileScreenFrag(),
    HomeScreenFrag(),
  ];

  @override
  Widget build(BuildContext context) {


    final iconList = <Widget>[
      Icon(Icons.search, size: 30),
      Icon(Icons.shopping_bag_outlined, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.favorite_border, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      body: SafeArea(child: screens[_bottomNavIndex]),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            // backgroundColor: MyColors.color_red_lightttt,
            iconTheme: IconThemeData(color: MyColors.color_white)),
        child: CurvedNavigationBar(
          key: navigationKey,
          items: iconList,
          color: MyColors.color_red_lightttt,
          buttonBackgroundColor: MyColors.color_red_pink,
          backgroundColor: MyColors.color_transparent,
          height: 60,
          index: _bottomNavIndex,
          onTap: (indexnew) {
            setState(() {
              _bottomNavIndex = indexnew;
            });
            print("new index is $_bottomNavIndex");
          },
          //animationCurve: Curves.easeInOut,
          //animationDuration: Duration(microseconds: 3000),
        ),
      ),
    );
  }
}
