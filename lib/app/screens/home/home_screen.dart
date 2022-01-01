import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:taxi/app/screens/home/home_controller.dart';

import 'components/customer_widget.dart';
import 'components/greeting_widget.dart';
import 'components/near_by_customer_title_widget.dart';
import 'components/past_rides_title_widget.dart';
import 'components/past_rides_widget.dart';
import 'components/search_widget.dart';

import '../../data/model/customer_model.dart';
import '../../data/model/user_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  CustomerModel customer = CustomerModel();

  final Stream<QuerySnapshot> customerStream =
      FirebaseFirestore.instance.collection('customerInfo').snapshots();

  final Stream<QuerySnapshot> pastRidesStream =
      FirebaseFirestore.instance.collection('pastRides').snapshots();

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
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GreetingWidget(loggedInUser: loggedInUser),
                SizedBox(
                  height: 16,
                ),
                SearchWidget(),
                SizedBox(
                  height: 16,
                ),
                NearByCustomerTitleWidget(),
                SizedBox(
                  height: 16,
                ),
                CustomerWidget(),
                SizedBox(
                  height: 8,
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                  indent: 0,
                  endIndent: 50,
                ),
                SizedBox(
                  height: 8,
                ),
                PastRidesTitleWidget(),
                SizedBox(
                  height: 8,
                ),
                PastRidesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
