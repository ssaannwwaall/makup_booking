import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:makup_booking/MyColors.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  static const routeName = "/ScheduleAppointmentScreen";

  const ScheduleAppointmentScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleAppointmentScreen> createState() =>
      _ScheduleAppointmentScreenState();
}

class _ScheduleAppointmentScreenState extends State<ScheduleAppointmentScreen> {
  TextEditingController controller_location = new TextEditingController();
  TextEditingController controller_date_time = new TextEditingController();
  TextEditingController controller_persons = new TextEditingController();
  TextEditingController controller_instructions = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller_date_time.text = '08/04/2022-08:23 pm';
    controller_persons.text = '3 persons';
    controller_location.text = '23h 332 street London, Uk';
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _hight = mediaQueryData.size.height;
    var _width = mediaQueryData.size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _hight,
          width: _width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    'Schedule Appointment',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: controller_location,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Location',
                ),
              ),
              TextFormField(
                controller: controller_date_time,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'time',
                ),
              ),
              TextFormField(
                controller: controller_persons,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'persons',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: _width,
                child: Column(
                  children: [
                    Container(
                      width: _width,
                      child: Text(
                        'Add instructions',
                        style: TextStyle(
                            fontSize: 25, color: MyColors.color_red_lightttt),
                      ),
                    ),
                    TextFormField(
                      controller: controller_instructions,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10),
                        labelText: 'persons',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: _width * 5,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          MyColors.color_red_lightttt),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: MyColors.color_white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
