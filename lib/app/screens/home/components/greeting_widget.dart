import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/user_model.dart';
import '../../../routes/app_pages.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({
    Key? key,
    required this.loggedInUser,
  }) : super(key: key);

  final UserModel loggedInUser;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hello , ${loggedInUser.firstName} ${loggedInUser.secondName}",
              style: Theme.of(context).textTheme.headline5,
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.profile);
                },
                child: ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.account_circle,
                      size: 35,
                    ),
                  ),
                ))
          ],
        ));
  }
}
