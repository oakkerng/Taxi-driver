import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class CustomerRouteEndWidget extends StatelessWidget {
  const CustomerRouteEndWidget({
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
                color: Colors.blue,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "To",
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
                "${controller.customerModel.dropPoint}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
