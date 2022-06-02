import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'MyColors.dart';

class HomeCardCategory extends StatelessWidget {
  var _hight, _width;
  Color backgroundColor = MyColors.color_white;
  String _lableText = '';
  String _svgPicture = 'assets/images/logo.svg';

  HomeCardCategory(this._hight, this._width, this._lableText, this.backgroundColor,
      this._svgPicture);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 3, bottom: 3),
      width: _width,
      height: _hight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: _hight * 0.7,
            width: _width,
            child: Card(
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              //color: backgroundColor,
             // color: Colors.transparent,
              borderOnForeground: true,
              elevation: 0,
              child: Image.asset(_svgPicture),
            ),
          ),
          Container(
            height: _hight * 0.3,
            width: _width,
            child: Center(
              child: Text(
                _lableText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: MyColors.color_black,
                ), //_width * .1 font size
              ),
            ),
          ),
        ],
      ),
    );
  }
}
