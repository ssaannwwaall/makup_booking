import 'package:flutter/material.dart';
import 'package:makup_booking/MyColors.dart';

class AddOnCards extends StatelessWidget {
  String heading, description, price, extraTime;
  var _width;

  AddOnCards(
      this._width, this.heading, this.description, this.price, this.extraTime);

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Container(
        width: _width,
        margin: const EdgeInsets.only(right: 10, left: 10, top: 5),
        child: Column(
          children: [
            Container(
              width: _width,
              margin: const EdgeInsets.all(3),
              child: Row(
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                        color: MyColors.color_black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+$extraTime min',
                    style: const TextStyle(
                        color: MyColors.color_black, fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              width: _width,
              margin: const EdgeInsets.all(3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: _width * .7,
                    child: Text(
                      description,
                      style: const TextStyle(
                          color: MyColors.color_gray_dark, fontSize: 12),
                    ),
                  ),
                  Container(
                    width: _width * .2,
                    child: Checkbox(
                        value: checked,
                        activeColor: MyColors.color_red_lightttt,
                        splashRadius: 5,
                        onChanged: (neeValue) {
                          checked = neeValue!;
                        }),
                  )
                ],
              ),
            ),
            Container(
              width: _width,
              margin: const EdgeInsets.all(3),
              child: Text(
                '\$$price',
                style: const TextStyle(
                    color: MyColors.color_black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
