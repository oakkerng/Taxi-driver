import 'package:taxi/app/data/model/customer_model.dart';

import 'package:get/get.dart';

class CustomerDetailController extends GetxController {
  static CustomerDetailController get to => Get.find();

  late CustomerModel customerModel;

  @override
  void onInit() {
    customerModel = Get.arguments;
    super.onInit();
  }
}
