import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shop_ease/model_class/singleuser_model.dart';
import 'package:shop_ease/model_class/user_model.dart';
import '../utilities/network_error.dart';

class ApiServices {
  Future<Details> signUp(
      String userName, String password, String email, String phoneNo) async {
    final http.Response response = await http.post(
        Uri.parse('https://2903-117-196-24-78.ngrok.io/api/user-registration'),
        headers: <String, String>{
          'Content-type': 'application/x-www-form-urlencoded'
        },
        body: {
          'UserName': userName,
          'Password': password,
          'Email': email,
          'PhoneNo': phoneNo,
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

  Future<Data> getProfileDetails(String id) async {
    Response response = await http.get(Uri.parse(
        'https://59ff-117-213-7-8.ngrok.io/api/user-registration/$id'));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var profile = Data.fromJson(jsonData);
      return profile;
    }
    throw NetworkError.networkError(response.statusCode);
  }

  Future<Details?> signIn(String email, String password) async {
    try {
      Response response = await post(
          Uri.parse('https://2903-117-196-24-78.ngrok.io/api/user-login'),
          headers: <String, String>{
            'Content-type': 'application/x-www-form-urlencoded'
          },
          body: {
            'Email': email,
            'Password': password
          });
      if (response.statusCode == 200) {
        return Details.fromJson(jsonDecode(response.body));


      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      print(e);
    }
  }

}
