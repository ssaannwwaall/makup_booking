import 'package:flutter/material.dart';
import 'package:makup_booking/MyColors.dart';
import 'package:makup_booking/Widgets/AddOnCards.dart';
import 'package:makup_booking/Widgets/ScheduleAppointmentScreen.dart';

class CategoryDetails extends StatefulWidget {
  static const routeName = "/CategoryDetails";

  const CategoryDetails({Key? key}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _hight,
          width: _width,
          child: Column(
            children: [
              Container(
                width: _width,
                height: _hight * .2,
                child: Image.asset('assets/images/hero1.png', fit: BoxFit.fill),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: _width,
                child: const Text(
                  'Blowout',
                  style: TextStyle(fontSize: 28, color: MyColors.color_black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: _width,
                child: const Text(
                  'Time 45 min',
                  style: TextStyle(fontSize: 12, color: MyColors.color_gray),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 20, top: 10),
                width: _width,
                child: const Text(
                  'Fresh straight and sleek to beachy waves, achieve your perfect hair',
                  style: TextStyle(fontSize: 12, color: MyColors.color_black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                width: _width,
                child: const Text(
                  'Popular AD-ONS',
                  style: TextStyle(
                      fontSize: 18, color: MyColors.color_red_lightttt),
                ),
              ),
              AddOnCards(
                  _width,
                  'Hair cut with blow Dry',
                  'Loreum ipsum is the dummy text dummy text is loreum ispum.',
                  '65',
                  '5'),
              AddOnCards(
                  _width,
                  'Hair cut with blow Dry',
                  'Loreum ipsum is the dummy text dummy text is loreum ispum.',
                  '65',
                  '5'),
              AddOnCards(
                  _width,
                  'Hair cut with blow Dry',
                  'Loreum ipsum is the dummy text dummy text is loreum ispum.',
                  '65',
                  '5'),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: _width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: _width * .45,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyColors.color_white),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(
                                fontSize: 22, color: MyColors.color_black),
                          )),
                    ),
                    Container(
                      width: _width * .45,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ScheduleAppointmentScreen.routeName);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                MyColors.color_red_lightttt),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(15)),
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: 22, color: MyColors.color_white),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
