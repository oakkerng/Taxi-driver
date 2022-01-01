import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:taxi/app/data/model/past_rides_model.dart';
import 'package:taxi/app/screens/home/home_controller.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PastRidesWidget extends StatelessWidget {
  const PastRidesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.pastRiedsList.length,
          itemBuilder: (context, index) {
            PastRidesModel model = controller.pastRiedsList[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(Routes.pastRides, arguments: model);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  leading: Image.network("${model.customerphoto}"),
                  title: Text("${model.name}"),
                  subtitle: Text("${model.phone}\n"
                      "${model.pickTime}"),
                  isThreeLine: true,
                  trailing: Icon(Icons.navigate_next),
                ),
              ),
            );
          });
    });
  }
}
