import 'package:flutter/material.dart';

import 'package:taxi/app/screens/customer_detail/customer_detail_controller.dart';

import 'components/customer_info_widget.dart';
import 'components/customer_route_end_widget.dart';
import 'components/customer_route_start_widget.dart';
import 'components/show_amount_widget.dart';
import 'components/show_calculation_widget.dart';
import 'components/google_map_widget.dart';

import 'package:get/get.dart';

class CustomerDetailScreen extends StatefulWidget {
  @override
  _CustomerDetailState createState() => _CustomerDetailState();
}

class _CustomerDetailState extends State<CustomerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerDetailController>(
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
              GoogleMapWidget(),
              SizedBox(
                height: 16,
              ),
              CustomerRouteStartWidget(),
              SizedBox(
                height: 32,
              ),
              CustomerRouteEndWidget(),
              SizedBox(
                height: 16,
              ),
              ShowCalculationWidget(),
              SizedBox(
                height: 16,
              ),
              ShowAmountWidget()
            ],
          ),
        )),
      ),
    );
  }
}
