import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:makup_booking/MyColors.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/SplashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
      //upperBound: 250, while using curves don't use upper bound
    );

    animation = CurvedAnimation(parent: controller!, curve: Curves.decelerate);

    controller?.forward();

    animation?.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        // todo: check Internet Package with Google to access User Data
        Navigator.of(context).pushNamed(HomeScreen.routeName);
      }
    });

    controller?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Container(
      color: MyColors.color_red_lightttt,
      height: _hight,
      width: _width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: _hight * .7,
            width: _width * .7,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
        ],
      ),
    );
  }
}
