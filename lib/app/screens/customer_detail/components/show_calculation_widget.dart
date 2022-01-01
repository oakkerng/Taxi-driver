import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class ShowCalculationWidget extends StatelessWidget {
  const ShowCalculationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
      builder: (controller) => Container(
        margin: const EdgeInsets.all(10.0),
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          children: [
            Row(
              children: [Text("")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trip Fare"),
                Text("${controller.customerModel.total} Kyat")
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Promotions"), Text("0 Kyat")],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total"),
                Text("${controller.customerModel.total} Kyat")
              ],
            ),
            Row(
              children: [Text("")],
            ),
          ],
        ),
      ),
    );
  }
}
