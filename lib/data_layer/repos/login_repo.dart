import 'dart:convert';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:anipay_flutter/data_layer/model/plain_login_request_model.dart';
import 'package:anipay_flutter/data_layer/model/plain_login_response_model.dart';
import 'package:anipay_flutter/data_layer/model/request_body.dart';
import 'package:http/http.dart' as http;

class LoginRepo {
  // Future<RequestBody<PlainLoginRequestModel>>loginToServer(String phone, String password) async {
  Future<ResponseBody?>loginToServer(RequestBody requestTrx) async {
    String baseUrl = "${BASE_URL + EA_MOBILES}";
    print("baseUrl: ${baseUrl}");
    print("request json: ${requestTrx.toJson()}");

    try {
      var response = await http.post(Uri.parse(baseUrl), body:
      // requestTrx,
      {
        'data': requestTrx.data,
        'method': requestTrx.method,
        'versioncode': requestTrx.versioncode,
        'sessionid': requestTrx.sessionid
      },
      // {
      //   'phone': phone,
      //   'password': password,
      //   // 'device_name': device
      // },
          headers: {
        'Accept': 'application/json',
        // 'Content-Type': 'application/x-www-form-urlencoded'
      });

      // Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        // json.decode(response.body);
        final ResponseBody? dataAuth = ResponseBody.fromJson(data);
        // String token = dataAuth?.token ?? "";
        // String tokenType = dataAuth?.tokenType ?? "";
        // int expiresIn = dataAuth?.expiresIn ?? 0;
        print(response.statusCode);
        print(data);
        print("dataAuth: ${dataAuth.toString()}");
        print(response);
        // if (expiresIn > 0) {
        //   saveDataPref(token, tokenType, expiresIn);
        // }
        // return AuthResponse.fromJson(data);
        return dataAuth;
      } else {
        print("response.body ${response.body}");

        // return response.body;
        //
        throw Exception();
      }
      // return response.statusCode;
    } catch (e) {
      print("error di repo ${e.toString()}");
      // return e;
      throw Exception();
      // return "Error di server mungkin";
    }
  }
}
