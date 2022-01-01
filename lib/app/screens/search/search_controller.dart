import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

import '../../data/model/customer_model.dart';

class SearchController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReferenceForCustomerInfo;
  RxList<CustomerModel> customerList = RxList<CustomerModel>([]);

  @override
  void onInit() {
    collectionReferenceForCustomerInfo =
        firebaseFirestore.collection("customerInfo");
    customerList.bindStream(getCustomerList());

    super.onInit();
  }

  Stream<List<CustomerModel>> getCustomerList() =>
      collectionReferenceForCustomerInfo.snapshots().map((query) =>
          query.docs.map((item) => CustomerModel.fromMap(item)).toList());
}
