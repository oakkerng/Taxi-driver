import 'package:get/get.dart';

import 'past_rides_for_google_map_controller.dart';

class PastRidesForGoogleMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PastRidesForGoogleMapController>(
        () => PastRidesForGoogleMapController());
  }
}
