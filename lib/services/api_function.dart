import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_ease/model_class/fasionsale_model.dart';
import 'package:shop_ease/model_class/singleuser_model.dart';
import 'package:shop_ease/model_class/user_model.dart';

class ApiServices {
  Future<Details> signUp(
      String UserName, String Password, String Email, String PhoneNo) async {
    final http.Response response = await http.post(
        Uri.parse('https://3d07-59-93-46-47.ngrok.io/api/user-registration'),
        headers: <String, String>{
          'Content-type': 'application/x-www-form-urlencoded'
        },
        body: {
          'UserName': UserName,
          'Password': Password,
          'Email': Email,
          'PhoneNo': PhoneNo,
          'Role': '2'
        });
    if (response.statusCode == 200) {
      print(response.statusCode);
      return Details.fromJson(jsonDecode(response.body));
    } else {
      print(jsonDecode(response.body));
      throw Exception('Registration Failed');
    }
  }

  Future<SingleUserModel?> getProfile(int id) async {
    final profileResponse = await http.get(Uri.parse('uri'));
    if (profileResponse.statusCode == 200) {
      final jsonData = jsonDecode(profileResponse.body);
      return SingleUserModel.fromJson(jsonData['data']);
    }
    return null;
  }

// Future<Data?> getFasionSale() async {
//   try {
//     final response = await http.get(Uri.parse(
//         'https://res.cloudinary.com/dlxjbz0xt/image/upload/v1702010173/shopease/skgetu8bggi2qabbghjs.png'));
//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       return Data.fromJson(jsonData);
//     } else {
//       return null;
//     }
//   } catch (e) {
//     return null;
//   }
// }
}
