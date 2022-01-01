import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

import 'components/about_us_widget.dart';
import 'components/dark_mode_widget.dart';
import 'components/facebook_page_widget.dart';
import 'components/playstore_widget.dart';

import '../../data/model/user_model.dart';
import '../../routes/app_pages.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ClipOval(
              child: Container(
                height: 130,
                width: 130,
                child: Image.asset(
                  'assets/logo.png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "${loggedInUser.firstName} ${loggedInUser.secondName}",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
            ),
            SizedBox(
              height: 16,
            ),
            Text("${loggedInUser.email}"),
            SizedBox(
              height: 16,
            ),
            ActionChip(
              label: Text("Logout"),
              onPressed: () {
                logout(context);
              },
            ),
            SizedBox(
              height: 32,
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  height: 5,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Setting",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                SizedBox(
                  height: 24,
                ),
                DarkModeWidget(),
                SizedBox(
                  height: 24,
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                ),
                SizedBox(
                  height: 24,
                ),
                PlayStoreWidget(),
                SizedBox(
                  height: 24,
                ),
                FacebookPageWidget(),
                SizedBox(
                  height: 24,
                ),
                AboutUsWidget()
              ],
            )),
          ],
        ),
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  Get.offAndToNamed(Routes.login);
}
