import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:anipay_flutter/data_layer/model/request_body.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

class LoginRepo {
  Dio _dio = Dio();
  ApiService() {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  // Future<RequestBody<PlainLoginRequestModel>>loginToServer(String phone, String password) async {
  Future<Response?> loginToServer(RequestBody requestTrx) async {
    String baseUrl = "${BASE_URL + EA_MOBILES}";
    print("baseUrl: ${baseUrl}");
    print("request json: ${requestTrx.toString()}");

    Map<String, String> headers = new HashMap();
    headers["content-type"] = "application/json";
    headers["versionCode"] = "1";
    print("headers: ${headers}");

    try {
      // var response = await http.post(Uri.parse(baseUrl),
      //   body: jsonEncode(requestTrx), headers: headers
      // );
      Response response = await _dio.post(baseUrl, options: Options(headers: headers), data: jsonEncode(requestTrx));

      print(response.statusCode);
      print(response.data);
      // Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        print("status login 200: response.data");

        // final Map<String, dynamic> data = jsonDecode(response.body);
        // // json.decode(response.body);
        // final ResponseBody? dataAuth = ResponseBody.fromJson(data);
        // // String token = dataAuth?.token ?? "";
        // // String tokenType = dataAuth?.tokenType ?? "";
        // // int expiresIn = dataAuth?.expiresIn ?? 0;
        // print(response.statusCode);
        // print(data);
        // print("dataAuth: ${dataAuth.toString()}");
        // print(response);
        // // if (expiresIn > 0) {
        // //   saveDataPref(token, tokenType, expiresIn);
        // // }
        // // return AuthResponse.fromJson(data);
        // return dataAuth;
      } else {
        // print("response.body ${response.body}");
        //
        // // return response.body;
        // //
        // throw Exception();
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
