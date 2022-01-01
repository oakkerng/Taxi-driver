import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    Key? key,
    required this.adsPoints,
  }) : super(key: key);

  final String adsPoints;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          ClipOval(
            child: Container(
              height: 130,
              width: 130,
              child: Image.asset(
                'assets/logo.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Points - ${adsPoints}",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
