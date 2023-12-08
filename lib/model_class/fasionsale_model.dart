class FasionSale {
  bool? success;
  bool? error;
  String? message;
  Data? data;

  FasionSale({this.success, this.error, this.message, this.data});

  FasionSale.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    error = json['Error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Success'] = this.success;
    data['Error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? image;
  int? price;
  int? star;
  String? size;
  String? color;
  String? sId;
  int? iV;

  Data(
      {this.name,
        this.image,
        this.price,
        this.star,
        this.size,
        this.color,
        this.sId,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
    star = json['star'];
    size = json['size'];
    color = json['color'];
    sId = json['_id'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['star'] = this.star;
    data['size'] = this.size;
    data['color'] = this.color;
    data['_id'] = this.sId;
    data['__v'] = this.iV;
    return data;
  }
}