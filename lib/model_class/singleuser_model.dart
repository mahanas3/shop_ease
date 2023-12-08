class SingleUserModel {
  bool? success;
  bool? error;
  String? message;
  Data? data;

  SingleUserModel({this.success, this.error, this.message, this.data});

  SingleUserModel.fromJson(Map<String, dynamic> json) {
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
  String? sId;
  String? userName;
  String? password;
  String? name;
  int? phoneNo;
  int? role;
  int? iV;

  Data(
      {this.sId,
        this.userName,
        this.password,
        this.name,
        this.phoneNo,
        this.role,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userName = json['UserName'];
    password = json['Password'];
    name = json['Name'];
    phoneNo = json['PhoneNo'];
    role = json['Role'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['UserName'] = this.userName;
    data['Password'] = this.password;
    data['Name'] = this.name;
    data['PhoneNo'] = this.phoneNo;
    data['Role'] = this.role;
    data['__v'] = this.iV;
    return data;
  }
}