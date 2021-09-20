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
    String? data,
    String? description,
    String? status,
  }) =>
      ResponseBody(
        data: data ?? this.data,
        description: description ?? this.description,
        status: status ?? this.status,
      );

  factory ResponseBody.fromJson(Map<String, dynamic> json) => ResponseBody(
        data: json["data"] == null ? null : json["data"],
        description: json["description"] == null ? null : json["description"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data,
        "description": description == null ? null : description,
        "status": status == null ? null : status,
      };
}
