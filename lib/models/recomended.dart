class Recomended {
  int? id;
  String? name;
  String? image_url;
  int? price;
  String? city;
  String? country;
  int? ratting;
  String? address;
  String? phone;
  String? map_url;
  List? photos;
  int? number_of_kitchens;
  int? number_of_bedrooms;
  int? number_of_cupboards;

  Recomended({
    this.id,
    this.name,
    this.image_url,
    this.price,
    this.city,
    this.country,
    this.ratting,
    this.address,
    this.phone,
    this.map_url,
    this.photos,
    this.number_of_kitchens,
    this.number_of_bedrooms,
    this.number_of_cupboards,
  });

  Recomended.fromJson(json) {
    id = json['id'];
    name = json['name'];
    image_url = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    ratting = json['ratting'];
    address = json['address'];
    phone = json['phone'];
    map_url = json['map_url'];
    photos = json['photos'];
    number_of_kitchens = json['number_of_kitchens'];
    number_of_bedrooms = json['number_of_bedrooms'];
    number_of_cupboards = json['number_of_cupboards'];
  }
}
