import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import 'package:taxi/app/data/model/customer_model.dart';
import 'package:taxi/app/data/model/past_rides_model.dart';

class HomeController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReferenceForCustomerInfo;
  RxList<CustomerModel> customerList = RxList<CustomerModel>([]);

  late CollectionReference collectionReferenceForPastRides;
  RxList<PastRidesModel> pastRiedsList = RxList<PastRidesModel>([]);

  @override
  void onInit() {
    collectionReferenceForCustomerInfo =
        firebaseFirestore.collection("customerInfo");
    customerList.bindStream(getCustomerList());

    collectionReferenceForPastRides = firebaseFirestore.collection("pastRides");
    pastRiedsList.bindStream(getPastRidesList());

    super.onInit();
  }

  Stream<List<CustomerModel>> getCustomerList() =>
      collectionReferenceForCustomerInfo.snapshots().map((query) =>
          query.docs.map((item) => CustomerModel.fromMap(item)).toList());

  Stream<List<PastRidesModel>> getPastRidesList() =>
      collectionReferenceForPastRides.snapshots().map((query) =>
          query.docs.map((item) => PastRidesModel.fromMap(item)).toList());
}
