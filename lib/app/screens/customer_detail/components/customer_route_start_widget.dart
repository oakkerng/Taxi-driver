import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class CustomerRouteStartWidget extends StatelessWidget {
  const CustomerRouteStartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
      builder: (controller) => Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.place,
                size: 25,
                color: Colors.green,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "From",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                "${controller.customerModel.pickup}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
