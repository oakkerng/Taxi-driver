import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:taxi/app/screens/search/search_controller.dart';

import '../../data/model/customer_model.dart';
import '../../routes/app_pages.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: <Widget>[
              Icon(Icons.search),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                  ),
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: (name != "" && name != null)
              ? FirebaseFirestore.instance
                  .collection('customerInfo')
                  .where("searchKeywords", arrayContains: name)
                  .snapshots()
              : FirebaseFirestore.instance
                  .collection("customerInfo")
                  .snapshots(),
          builder: (context, snapshot) {
            return (snapshot.connectionState == ConnectionState.waiting)
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      CustomerModel model = controller.customerList[index];
                      return Container(
                        padding: EdgeInsets.only(top: 16),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Get.toNamed(Routes.customerDetail,
                                    arguments: model);
                              },
                              leading: Image.network(
                                  "${snapshot.data!.docChanges[index].doc['customerphoto']}"),
                              title: Text(
                                  snapshot.data!.docChanges[index].doc['name']),
                              subtitle: Text(snapshot
                                  .data!.docChanges[index].doc['phone']),
                              trailing: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      );
                    });
          },
        ),
      ),
    );
  }
}
