import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:anipay_flutter/data_layer/model/login_response_maybe.dart' as ResponseBasic;
import 'package:anipay_flutter/data_layer/model/plain_login_response_model.dart';
import 'package:anipay_flutter/data_layer/model/request_body.dart';
import 'package:anipay_flutter/data_layer/model/user_register_anipay_response.dart';
import 'package:anipay_flutter/logic_layer/functions/CryptoHash.dart';
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
    print("request json: ${requestTrx.toJson().toString()}");

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
        print("status login 200: ${response.data}");
        // var jsnDcd = jsonDecode(response.data);
        // var bef = ResponseBasic.ResponseBody.fromJson(response.data);
        var bef = ResponseBasic.ResponseBody.fromJson(response.data);
        print("bef: ${bef.toJson().toString()}");
        var text = CryptoHash.parseData(bef.data ?? "", ANIPAY_LOGIN, SECRET_KEY);
        print("after decrypt: $text");
        var loginResponse = text != null ? PlainLoginResponseModel.fromJson(jsonDecode(text)) : PlainLoginResponseModel();
        print("loginResponse: ${loginResponse.toJson().toString()}");
        // print("jsnDcd: ${jsnDcd.toString()}");
        // var bef = ResponseBasic.ResponseBody.fromJson(jsnDcd);
        // print("bef: $bef");
        // var text = CryptoHash.parseData(bef.data ?? "", ANIPAY_LOGIN, SECRET_KEY);
        // print("after decrypt: $text");

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
  Future<Response?> registerUser(RequestBody requestTrx) async {
    String baseUrl = "${BASE_URL + EA_MOBILES}";
    print("baseUrl: ${baseUrl}");
    print("request json: ${requestTrx.toJson().toString()}");

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
        print("status register 200: ${response.data}");

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
        return response;
      } else {
        // print("response.body ${response.body}");
        //
        // // return response.body;
        // //
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
