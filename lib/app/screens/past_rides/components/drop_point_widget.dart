import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

class DropPointWidget extends StatelessWidget {
  const DropPointWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastRidesController>(
        builder: (controller) => Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      size: 25,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Drop Point",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "${controller.pastRidesModel.dropPoint}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "${controller.pastRidesModel.dropTime}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ));
  }
}
