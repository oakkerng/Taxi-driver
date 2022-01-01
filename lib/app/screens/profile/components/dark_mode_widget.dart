import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/constants/light_idea_theme.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({Key? key}) : super(key: key);

  @override
  _DarkModeWidgetState createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  bool showBox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.dark_mode,
                size: 25.0,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Dark Mode",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Switch(
              value: showBox,
              onChanged: (value) {
                setState(() {
                  showBox = value;
                  Get.isDarkMode
                      ? Get.changeTheme(LightIdeaTheme.light())
                      : Get.changeTheme(LightIdeaTheme.dark());
                });
              }),
        ],
      ),
    );
  }
}
