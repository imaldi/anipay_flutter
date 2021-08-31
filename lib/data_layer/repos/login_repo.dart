import 'dart:convert';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:http/http.dart' as http;

class LoginRepo {
  loginToServer(String phone, String password) async {
    String baseUrl = "${BASE_URL + EA_MOBILES}";
    print("baseUrl: ${baseUrl}");

    try {
      var response = await http.post(Uri.parse(baseUrl), body: {
        'phone': phone,
        'password': password,
        // 'device_name': device
      }, headers: {
        'Accept': 'application/json',
        // 'Content-Type': 'application/x-www-form-urlencoded'
      });

      // Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        // json.decode(response.body);
        // final AuthResponse? dataAuth = AuthResponse.fromJson(data);
        // String token = dataAuth?.token ?? "";
        // String tokenType = dataAuth?.tokenType ?? "";
        // int expiresIn = dataAuth?.expiresIn ?? 0;
        print(response.statusCode);
        print(data);
        print(response);
        // if (expiresIn > 0) {
        //   saveDataPref(token, tokenType, expiresIn);
        // }
        // return AuthResponse.fromJson(data);
        return data;
      } else {
        print("response.body ${response.body}");

        return response.body;

        // throw Exception();
      }
      // return response.statusCode;
    } catch (e) {
      print("error di repo ${e.toString()}");
      // return e;
      // throw Exception();
      return "Error di server mungkin";
    }
  }
}
