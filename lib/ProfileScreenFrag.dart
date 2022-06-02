import 'package:flutter/material.dart';

class ProfileScreenFrag extends StatefulWidget {
  const ProfileScreenFrag({Key? key}) : super(key: key);

  @override
  State<ProfileScreenFrag> createState() => _ProfileScreenFragState();
}

class _ProfileScreenFragState extends State<ProfileScreenFrag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('profile')),
    );
  }
}
