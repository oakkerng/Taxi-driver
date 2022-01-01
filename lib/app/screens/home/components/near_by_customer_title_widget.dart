import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearByCustomerTitleWidget extends StatelessWidget {
  const NearByCustomerTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              Icons.near_me,
              size: 25,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "Near By Customers",
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ));
  }
}
