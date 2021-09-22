// To parse this JSON data, do
//
//     final resetPasswordRequestModel = resetPasswordRequestModelFromJson(jsonString);

import 'dart:convert';

ResetPasswordRequestModel resetPasswordRequestModelFromJson(String str) => ResetPasswordRequestModel.fromJson(json.decode(str));

String? resetPasswordRequestModelToJson(ResetPasswordRequestModel data) => json.encode(data.toJson());

class ResetPasswordRequestModel {
  ResetPasswordRequestModel({
    this.email,
    this.method,
    this.otp,
    this.pinNew,
    this.regNo,
  });

  String? email;
  String? method;
  String? otp;
  String? pinNew;
  String? regNo;

  ResetPasswordRequestModel copyWith({
    String? email,
    String? method,
    String? otp,
    String? pinNew,
    String? regNo,
  }) =>
      ResetPasswordRequestModel(
        email: email ?? this.email,
        method: method ?? this.method,
        otp: otp ?? this.otp,
        pinNew: pinNew ?? this.pinNew,
        regNo: regNo ?? this.regNo,
      );

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) => ResetPasswordRequestModel(
    email: json["email"] == null ? null : json["email"],
    method: json["method"] == null ? null : json["method"],
    otp: json["otp"] == null ? null : json["otp"],
    pinNew: json["pin_new"] == null ? null : json["pin_new"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
  );

  Map<String, dynamic> toJson() => {
    "email": email == null ? null : email,
    "method": method == null ? null : method,
    "otp": otp == null ? null : otp,
    "pin_new": pinNew == null ? null : pinNew,
    "reg_no": regNo == null ? null : regNo,
  };
}
