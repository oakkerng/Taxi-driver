import 'package:get/get.dart';

import 'package:taxi/app/data/model/past_rides_model.dart';

class PastRidesController extends GetxController {
  late PastRidesModel pastRidesModel;
  @override
  void onInit() {
    pastRidesModel = Get.arguments;
    super.onInit();
  }
}
