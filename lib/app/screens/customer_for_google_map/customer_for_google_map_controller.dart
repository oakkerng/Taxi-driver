import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:taxi/app/data/model/customer_model.dart';

class CustomerForGoogleMapController extends GetxController {
  static const LatLng showLocation =
      const LatLng(21.965683200411814, 96.08561169206043);
  late GoogleMapController newGoogleMapController;
  Set<Marker> markers = new Set();

  late CustomerModel customerModel;
  @override
  void onInit() {
    customerModel = Get.arguments;
    getmarkers();
    super.onInit();
  }

  void getmarkers() async {
    try {
      markers.add(Marker(
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(double.parse("${customerModel.startlat}"),
            double.parse("${customerModel.startlng}")),
        infoWindow: InfoWindow(
          title: 'Customer',
          snippet: '${customerModel.customerSnippet}',
        ),
        icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueGreen), //Icon for Marker
      ));

      markers.add(Marker(
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(21.951784607278206, 96.10852553565775),
        infoWindow: InfoWindow(
          title: 'Driver',
          snippet: '${customerModel.driverSnippet}',
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
