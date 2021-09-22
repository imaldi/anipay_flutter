// To parse this JSON data, do
//
//     final changePasswordAnipayResponseModel = changePasswordAnipayResponseModelFromJson(jsonString);

import 'dart:convert';

ChangePasswordAnipayResponseModel changePasswordAnipayResponseModelFromJson(String str) => ChangePasswordAnipayResponseModel.fromJson(json.decode(str));

String? changePasswordAnipayResponseModelToJson(ChangePasswordAnipayResponseModel data) => json.encode(data.toJson());

class ChangePasswordAnipayResponseModel {
  ChangePasswordAnipayResponseModel({
    this.data,
    this.description,
    this.status,
  });

  String? data;
  String? description;
  String? status;

  ChangePasswordAnipayResponseModel copyWith({
    String? data,
    String? description,
    String? status,
  }) =>
      ChangePasswordAnipayResponseModel(
        data: data ?? this.data,
        description: description ?? this.description,
        status: status ?? this.status,
      );

  factory ChangePasswordAnipayResponseModel.fromJson(Map<String, dynamic> json) => ChangePasswordAnipayResponseModel(
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
