class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] as int?,
        name: json["name"] as String?,
        username: json["username"] as String?,
        email: json["email"] as String?,
        address: Address.fromJson(json["address"] as Map<String, dynamic>),
        phone: json["phone"] as String?,
        website: json["website"] as String?,
        company: Company.fromJson(json["company"] as Map<String, dynamic>),
      );
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"] as String?,
        suite: json["suite"] as String?,
        city: json["city"] as String?,
        zipcode: json["zipcode"] as String?,
      );
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"] as String?,
        catchPhrase: json["catchPhrase"] as String?,
        bs: json["bs"] as String?,
      );
}

class Geo {
  int? lat;
  int? lng;

  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"] as int?,
        lng: json["lng"] as int?,
      );
}
