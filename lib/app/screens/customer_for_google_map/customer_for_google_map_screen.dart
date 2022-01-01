import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'customer_for_google_map_controller.dart';

class CustomerForGoogleMapScreen extends StatefulWidget {
  const CustomerForGoogleMapScreen({Key? key}) : super(key: key);

  @override
  _CustomerForGoogleMapScreenState createState() =>
      _CustomerForGoogleMapScreenState();
}

class _CustomerForGoogleMapScreenState
    extends State<CustomerForGoogleMapScreen> {
  Completer<GoogleMapController> _controllerGoogle = Completer();
  late GoogleMapController newGoogleMapController;
  final Set<Marker> markers = new Set();
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(21.954510, 96.093292), zoom: 14.4746);

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return GetBuilder<CustomerForGoogleMapController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text("Google Map"),
        ),
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              myLocationButtonEnabled: true,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controllerGoogle.complete(controller);
                newGoogleMapController = controller;
              },
              markers: controller.markers,
            ),
          ],
        ),
      ),
    );
  }
}
