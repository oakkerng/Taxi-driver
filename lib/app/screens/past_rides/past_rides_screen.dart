import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taxi/app/screens/past_rides/past_rides_controller.dart';

import 'components/google_map_widget.dart';
import 'components/show_amount_widget.dart';
import 'components/show_calculation_widget.dart';
import 'components/customer_info_widget.dart';
import 'components/drop_point_widget.dart';
import 'components/pickup_widget.dart';

class PastRidesScreen extends StatefulWidget {
  @override
  _PastRidesScreenState createState() => _PastRidesScreenState();
}

class _PastRidesScreenState extends State<PastRidesScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PastRidesController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                title: Text("Customer Detail"),
              ),
              body: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    CustomerInfoWidget(),
                    SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        GoogleMapWidget(),
                        SizedBox(
                          height: 16,
                        ),
                        PickupWidget()
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    DropPointWidget(),
                    SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ShowCalculationWidget(),
                    SizedBox(
                      height: 16,
                    ),
                    ShowAmountWidget()
                  ],
                ),
              )),
            ));
  }
}
