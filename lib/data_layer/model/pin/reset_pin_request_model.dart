// To parse this JSON data, do
//
//     final resetPinRequestModel = resetPinRequestModelFromJson(jsonString);

import 'dart:convert';

ResetPinRequestModel resetPinRequestModelFromJson(String str) => ResetPinRequestModel.fromJson(json.decode(str));

String? resetPinRequestModelToJson(ResetPinRequestModel data) => json.encode(data.toJson());

class ResetPinRequestModel {
  ResetPinRequestModel({
    this.method,
    this.regNo,
    this.email,
    this.otp,
    this.pinNew,
  });

  String? method;
  String? regNo;
  String? email;
  String? otp;
  String? pinNew;

  ResetPinRequestModel copyWith({
    String? method,
    String? regNo,
    String? email,
    String? otp,
    String? pinNew,
  }) =>
      ResetPinRequestModel(
        method: method ?? this.method,
        regNo: regNo ?? this.regNo,
        email: email ?? this.email,
        otp: otp ?? this.otp,
        pinNew: pinNew ?? this.pinNew,
      );

  factory ResetPinRequestModel.fromJson(Map<String, dynamic> json) => ResetPinRequestModel(
    method: json["method"] == null ? null : json["method"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
    email: json["email"] == null ? null : json["email"],
    otp: json["otp"] == null ? null : json["otp"],
    pinNew: json["pin_new"] == null ? null : json["pin_new"],
  );

  Map<String, dynamic> toJson() => {
    "method": method == null ? null : method,
    "reg_no": regNo == null ? null : regNo,
    "email": email == null ? null : email,
    "otp": otp == null ? null : otp,
    "pin_new": pinNew == null ? null : pinNew,
  };
}
