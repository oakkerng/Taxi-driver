import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/model/past_rides_model.dart';

class PastRidesForGoogleMapController extends GetxController {
  static const LatLng showLocation =
      const LatLng(21.965683200411814, 96.08561169206043);
  late GoogleMapController newGoogleMapController;
  Set<Marker> markers = new Set();

  late PastRidesModel pastRidesModel;
  @override
  void onInit() {
    pastRidesModel = Get.arguments;
    getmarkers();
    super.onInit();
  }

  void getmarkers() async {
    try {
      markers.add(Marker(
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(double.parse("${pastRidesModel.startlat}"),
            double.parse("${pastRidesModel.startlng}")),
        infoWindow: InfoWindow(
          title: 'Start Point',
          snippet: '${pastRidesModel.startSnippet}',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueGreen), //Icon for Marker
      ));

      markers.add(Marker(
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(21.951784607278206, 96.10852553565775),
        infoWindow: InfoWindow(
          title: 'End Point',
          snippet: '${pastRidesModel.endSnippet}',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
    } catch (e) {
      print(e);
    } finally {
      update();
    }
  }
}
