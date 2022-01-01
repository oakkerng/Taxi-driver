class PastRidesModel {
  String? uid;
  String? name;
  String? phone;
  String? customerphoto;
  String? dropPoint;
  String? pickup;
  String? fare;
  String? promotion;
  String? total;
  String? dropTime;
  String? pickTime;
  String? startlat;
  String? startlng;

  String? startSnippet;
  String? endSnippet;
  PastRidesModel(
      {this.uid,
      this.name,
      this.phone,
      this.customerphoto,
      this.dropPoint,
      this.pickup,
      this.fare,
      this.promotion,
      this.total,
      this.dropTime,
      this.pickTime,
      this.startlat,
      this.startlng,
      this.startSnippet,
      this.endSnippet});

  factory PastRidesModel.fromMap(map) {
    return PastRidesModel(
      uid: map['uid'],
      name: map['name'],
      phone: map['phone'],
      customerphoto: map['customerphoto'],
      dropPoint: map['dropPoint'],
      pickup: map['pickup'],
      fare: map['fare'],
      promotion: map['promotion'],
      total: map['total'],
      dropTime: map['dropTime'],
      pickTime: map['pickTime'],
      startlat: map['startlat'],
      startlng: map['startlng'],
      startSnippet: map['startSnippet'],
      endSnippet: map['endSnippet'],
    );
  }
}
