import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class GoogleMapWidget extends StatelessWidget {
  const GoogleMapWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Google Map",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
          ),
          TextButton(
              onPressed: () {
                Get.toNamed(Routes.customerMap,
                    arguments: controller.customerModel);
              },
              child: Text(
                "See More",
                style: TextStyle(color: Colors.grey),
              ))
        ],
      ),
    );
  }
}
