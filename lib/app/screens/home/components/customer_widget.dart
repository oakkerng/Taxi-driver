import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/screens/home/home_controller.dart';

import 'package:get/get.dart';

import '../../../data/model/customer_model.dart';

import '../../../routes/app_pages.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.customerList.length,
          itemBuilder: (context, index) {
            CustomerModel model = controller.customerList[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.customerDetail, arguments: model);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  leading: Image.network("${model.customerphoto}"),
                  title: Text("${model.name}"),
                  subtitle: Text("${model.phone}"),
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
            );
          });
    });
  }
}
