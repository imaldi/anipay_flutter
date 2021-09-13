// To parse this JSON data, do
//
//     final plainRequestLoginModel = plainRequestLoginModelFromJson(jsonString);

import 'dart:convert';

PlainLoginRequestModel plainRequestLoginModelFromJson(String str) => PlainLoginRequestModel.fromJson(json.decode(str));

String? plainRequestLoginModelToJson(PlainLoginRequestModel data) => json.encode(data.toJson());

class PlainLoginRequestModel {
  PlainLoginRequestModel({
    this.flagpin,
    this.macAddress,
    this.method,
    this.myntType,
    this.pin,
    this.regNo,
    this.serialNo,
  });

  String? flagpin;
  String? macAddress;
  String? method;
  String? myntType;
  String? pin;
  String? regNo;
  String? serialNo;

  PlainLoginRequestModel copyWith({
    String? flagpin,
    String? macAddress,
    String? method,
    String? myntType,
    String? pin,
    String? regNo,
    String? serialNo,
  }) =>
      PlainLoginRequestModel(
        flagpin: flagpin ?? this.flagpin,
        macAddress: macAddress ?? this.macAddress,
        method: method ?? this.method,
        myntType: myntType ?? this.myntType,
        pin: pin ?? this.pin,
        regNo: regNo ?? this.regNo,
        serialNo: serialNo ?? this.serialNo,
      );

  factory PlainLoginRequestModel.fromJson(Map<String, dynamic> json) => PlainLoginRequestModel(
    flagpin: json["flagpin"] == null ? null : json["flagpin"],
    macAddress: json["mac_address"] == null ? null : json["mac_address"],
    method: json["method"] == null ? null : json["method"],
    myntType: json["mynt_type"] == null ? null : json["mynt_type"],
    pin: json["pin"] == null ? null : json["pin"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
    serialNo: json["serialNo"] == null ? null : json["serialNo"],
  );

  Map<String, dynamic> toJson() => {
    "flagpin": flagpin == null ? null : flagpin,
    "mac_address": macAddress == null ? null : macAddress,
    "method": method == null ? null : method,
    "mynt_type": myntType == null ? null : myntType,
    "pin": pin == null ? null : pin,
    "reg_no": regNo == null ? null : regNo,
    "serialNo": serialNo == null ? null : serialNo,
  };
}
