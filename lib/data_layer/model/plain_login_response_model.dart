// To parse this JSON data, do
//
//     final plainRequestLoginModel = plainRequestLoginModelFromJson(jsonString);

import 'dart:convert';

ResponseBody plainRequestLoginModelFromJson(String str) => ResponseBody.fromJson(json.decode(str));

String? plainRequestLoginModelToJson(ResponseBody data) => json.encode(data.toJson());

class ResponseBody {
  ResponseBody({
    this.data,
    this.description,
    this.status,
  });

  String? data;
  String? description;
  String? status;

  ResponseBody copyWith({
    String? flagpin,
    String? macAddress,
    String? method,
    String? myntType,
    String? pin,
    String? regNo,
    String? serialNo,
  }) =>
      ResponseBody(
        data: flagpin ?? this.data,
        description: macAddress ?? this.description,
        status: method ?? this.status,
      );

  factory ResponseBody.fromJson(Map<String, dynamic> json) => ResponseBody(
        data: json["flagpin"] == null ? null : json["flagpin"],
        description: json["mac_address"] == null ? null : json["mac_address"],
        status: json["method"] == null ? null : json["method"],
      );

  Map<String, dynamic> toJson() => {
        "flagpin": data == null ? null : data,
        "mac_address": description == null ? null : description,
        "method": status == null ? null : status,
      };
}
