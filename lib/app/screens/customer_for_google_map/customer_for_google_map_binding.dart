import 'package:get/get.dart';

import 'customer_for_google_map_controller.dart';

class CustomerForGoogleMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerForGoogleMapController>(
        () => CustomerForGoogleMapController());
  }
}
