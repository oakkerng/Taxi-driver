import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastRidesController>(
      builder: (controller) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          leading: Image.network("${controller.pastRidesModel.customerphoto}"),
          title: Text(
            "${controller.pastRidesModel.name}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Ph no: ${controller.pastRidesModel.phone}"),
        ),
      ),
    );
  }
}
