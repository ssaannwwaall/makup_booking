import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:makup_booking/CategoryDetails.dart';
import 'package:makup_booking/HomeCardCategory.dart';
import 'package:makup_booking/HomeScreenFrag.dart';
import 'package:makup_booking/MyColors.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreenFrag extends StatefulWidget {
  const HomeScreenFrag({Key? key}) : super(key: key);

  @override
  State<HomeScreenFrag> createState() => _HomeScreenFragState();
}

class _HomeScreenFragState extends State<HomeScreenFrag> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return SafeArea(
      child: Container(
        height: _hight,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: MyColors.color_red_lightttt,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: _width * .12,
                      height: _hight * .03,
                      child: SvgPicture.asset('assets/images/location.svg')),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Chica Glamour',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyColors.color_white),
                      ),
                    ),
                  ),
                  Container(
                      width: _width * .12,
                      height: _hight * .03,
                      child: SvgPicture.asset('assets/images/bag.svg')),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ImageSlideshow(
            //     height: _hight * .22,
            //     indicatorColor: Colors.transparent,
            //     indicatorBackgroundColor: Colors.transparent,
            //     autoPlayInterval: 3000,
            //     isLoop: true,
            //     children: [
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero1.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero2.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero3.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero4.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero5.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero6.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //       Card(
            //         borderOnForeground: true,
            //         elevation: 5,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(7.0),
            //         ),
            //         child: Image.asset(
            //           "assets/images/hero7.png",
            //           fit: BoxFit.fill,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: _hight * .05,
              width: _width,
              child: const Center(
                child: Text(
                  'Our Services',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 3, right: 3),
              height: _hight * .25,
              width: _width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: HomeCardCategory(
                        _hight * .2,
                        _width * .3,
                        'nails polish',
                        MyColors.color_gray_lightttt,
                        'assets/images/foot_care.png'),
                    onTap: () {
                      print('category clicked');
                      Navigator.of(context).pushNamed(CategoryDetails.routeName);
                    },
                  ),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Long nails',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_nail_color.png'),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Nail color',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_care.png'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 3, right: 3),
              height: _hight * .25,
              width: _width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'nails polish',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_care.png'),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Long nails',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_nail_color.png'),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Nail color',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_care.png'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 3, right: 3),
              height: _hight * .25,
              width: _width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'nails polish',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_care.png'),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Long nails',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_nail_color.png'),
                  HomeCardCategory(
                      _hight * .2,
                      _width * .3,
                      'Nail color',
                      MyColors.color_gray_lightttt,
                      'assets/images/foot_care.png'),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: _hight * .07,
            //     width: _width,
            //     child: Card(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       elevation: 5,
            //       child: Center(
            //         child: Text(
            //           'All services',
            //           style: TextStyle(
            //               color: MyColors.color_red_lightttt, fontSize: 20),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
