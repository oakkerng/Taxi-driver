import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PastRidesTitleWidget extends StatelessWidget {
  const PastRidesTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        "Past Rides",
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
