class CustomerModel {
  String? uid;
  String? customerphoto;
  String? customerSnippet;
  String? dropPoint;
  String? driverSnippet;
  String? endlag;
  String? endlng;
  String? name;
  String? phone;
  String? pickup;
  String? promotion;
  String? startlat;
  String? startlng;
  String? total;

  CustomerModel(
      {this.uid,
      this.customerSnippet,
      this.customerphoto,
      this.dropPoint,
      this.driverSnippet,
      this.endlng,
      this.endlag,
      this.name,
      this.phone,
      this.pickup,
      this.startlat,
      this.startlng,
      this.total});

  factory CustomerModel.fromMap(map) {
    return CustomerModel(
      uid: map['uid'],
      customerSnippet: map['customerSnippet'],
      customerphoto: map['customerphoto'],
      driverSnippet: map['driverSnippet'],
      dropPoint: map['dropPoint'],
      endlag: map['endlag'],
      endlng: map['endlng'],
      name: map['name'],
      phone: map['phone'],
      pickup: map['pickup'],
      startlat: map['startlat'],
      startlng: map['startlng'],
      total: map['total'],
    );
  }
}
