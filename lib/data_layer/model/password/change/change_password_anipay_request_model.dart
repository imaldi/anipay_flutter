// To parse this JSON data, do
//
//     final changePasswordAnipayRequestModel = changePasswordAnipayRequestModelFromJson(jsonString);

import 'dart:convert';

ChangePasswordAnipayRequestModel changePasswordAnipayRequestModelFromJson(String str) => ChangePasswordAnipayRequestModel.fromJson(json.decode(str));

String? changePasswordAnipayRequestModelToJson(ChangePasswordAnipayRequestModel data) => json.encode(data.toJson());

class ChangePasswordAnipayRequestModel {
  ChangePasswordAnipayRequestModel({
    this.macAddress,
    this.method,
    this.pin,
    this.pinNew,
    this.regNo,
  });

  String? macAddress;
  String? method;
  String? pin;
  String? pinNew;
  String? regNo;

  ChangePasswordAnipayRequestModel copyWith({
    String? macAddress,
    String? method,
    String? pin,
    String? pinNew,
    String? regNo,
  }) =>
      ChangePasswordAnipayRequestModel(
        macAddress: macAddress ?? this.macAddress,
        method: method ?? this.method,
        pin: pin ?? this.pin,
        pinNew: pinNew ?? this.pinNew,
        regNo: regNo ?? this.regNo,
      );

  factory ChangePasswordAnipayRequestModel.fromJson(Map<String, dynamic> json) => ChangePasswordAnipayRequestModel(
    macAddress: json["mac_address"] == null ? null : json["mac_address"],
    method: json["method"] == null ? null : json["method"],
    pin: json["pin"] == null ? null : json["pin"],
    pinNew: json["pinNew"] == null ? null : json["pinNew"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
  );

  Map<String, dynamic> toJson() => {
    "mac_address": macAddress == null ? null : macAddress,
    "method": method == null ? null : method,
    "pin": pin == null ? null : pin,
    "pinNew": pinNew == null ? null : pinNew,
    "reg_no": regNo == null ? null : regNo,
  };
}
