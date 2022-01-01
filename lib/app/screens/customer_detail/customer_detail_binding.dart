import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'package:get/get.dart';

class CustomerDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerDetailController>(() => CustomerDetailController());
  }
}
