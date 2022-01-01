import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

class ShowAmountWidget extends StatelessWidget {
  const ShowAmountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastRidesController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Received Amount",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "${controller.pastRidesModel.total} Kyat",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
