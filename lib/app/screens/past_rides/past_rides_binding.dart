import 'package:get/get.dart';

import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

class PastRidesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PastRidesController>(() => PastRidesController());
  }
}
