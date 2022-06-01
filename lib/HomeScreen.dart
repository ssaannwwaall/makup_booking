import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:makup_booking/HomeCardCategory.dart';
import 'package:makup_booking/MyColors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    int _bottomNavIndex = 0;
    final iconList = <IconData>[
      Icons.home,
      Icons.search,
      Icons.shopping_bag_outlined,
      Icons.person,
    ];
    AnimationController _animationController;
    Animation<double>? animation;
    CurvedAnimation curve;

    @override
    void initState() {
      super.initState();
      final systemTheme = SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: MyColors.color_green,
        systemNavigationBarIconBrightness: Brightness.light,
      );
      SystemChrome.setSystemUIOverlayStyle(systemTheme);

      _animationController = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
      );
      curve = CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.fastOutSlowIn,
        ),
      );
      animation = Tween<double>(
        begin: 0,
        end: 1,
      ).animate(curve);

      Future.delayed(
        Duration(seconds: 1),
        () => _animationController.forward(),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _hight,
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: _width * .12,
                        height: _hight * .03,
                        child: SvgPicture.asset('assets/images/location.svg')),
                    const Center(
                      child: Text(
                        'Chica Glamour',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: MyColors.color_black),
                      ),
                    ),
                    Container(
                        width: _width * .12,
                        height: _hight * .03,
                        child: SvgPicture.asset('assets/images/bag.svg')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ImageSlideshow(
                  height: _hight * .22,
                  indicatorColor: Colors.transparent,
                  indicatorBackgroundColor: Colors.transparent,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero3.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero4.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero5.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero6.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Card(
                      borderOnForeground: true,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Image.asset(
                        "assets/images/hero7.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: _hight * .05,
                width: _width,
                child: const Text(
                  'What are you looking for?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: _hight * .12,
                width: _width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'nails polish',
                        MyColors.color_gray_lightttt,
                        'assets/images/nail_polish.png'),
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'Long nails',
                        MyColors.color_gray_lightttt,
                        'assets/images/long_nails.png'),
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'Nail color',
                        MyColors.color_gray_lightttt,
                        'assets/images/nail_colors.png'),
                    HomeCardCategory(_hight * .1, _width * .2, 'Youga',
                        MyColors.color_gray_lightttt, 'assets/images/yoga.png'),
                  ],
                ),
              ),
              Container(
                height: _hight * .12,
                width: _width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'Massage back',
                        MyColors.color_gray_lightttt,
                        'assets/images/back_masaj.png'),
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'Massage foot',
                        MyColors.color_gray_lightttt,
                        'assets/images/foot_massage.png'),
                    HomeCardCategory(
                        _hight * .12,
                        _width * .2,
                        'Cough cure',
                        MyColors.color_gray_lightttt,
                        'assets/images/coufe_cure.png'),
                    HomeCardCategory(
                        _hight * .1,
                        _width * .2,
                        'foot care',
                        MyColors.color_gray_lightttt,
                        'assets/images/foot_care.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: _hight * .07,
                  width: _width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Center(
                      child: Text(
                        'All services',
                        style: TextStyle(color: MyColors.color_red_lightttt, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? MyColors.color_green : Colors.white;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Icon $index",
                  maxLines: 1,
                  style: TextStyle(color: color),
                ),
              )
            ],
          );
        },
        backgroundColor: MyColors.color_red_lightttt,
        activeIndex: _bottomNavIndex,
        splashColor: MyColors.color_red,
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 18,
        rightCornerRadius: 18,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
          print('nav clicked...');
        },
      ),
    );
  }
}
