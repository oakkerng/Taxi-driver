import 'package:flutter/cupertino.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class ShowAmountWidget extends StatelessWidget {
  const ShowAmountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Amount to Get",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "${controller.customerModel.total} Kyat",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
