import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
      builder: (controller) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListTile(
          leading: Image.network("${controller.customerModel.customerphoto}"),
          title: Text(
            "${controller.customerModel.name}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Ph no: ${controller.customerModel.phone}"),
        ),
      ),
    );
  }
}
