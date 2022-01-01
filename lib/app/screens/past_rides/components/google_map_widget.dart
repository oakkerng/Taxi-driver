import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/routes/app_pages.dart';
import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastRidesController>(
      builder: (controller) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Google Map",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.pastRidesMap,
                      arguments: controller.pastRidesModel);
                },
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ),
      ),
    );
  }
}
