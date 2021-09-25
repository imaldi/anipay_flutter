// To parse this JSON data, do
//
//     final otpRequestModel = otpRequestModelFromJson(jsonString);

import 'dart:convert';

OtpRequestModel otpRequestModelFromJson(String str) => OtpRequestModel.fromJson(json.decode(str));

String? otpRequestModelToJson(OtpRequestModel data) => json.encode(data.toJson());

class OtpRequestModel {
  OtpRequestModel({
    this.method,
    this.regNo,
    this.otp,
  });

  String? method;
  String? regNo;
  String? otp;

  OtpRequestModel copyWith({
    String? method,
    String? regNo,
    String? otp,
  }) =>
      OtpRequestModel(
        method: method ?? this.method,
        regNo: regNo ?? this.regNo,
        otp: otp ?? this.otp,
      );

  factory OtpRequestModel.fromJson(Map<String, dynamic> json) => OtpRequestModel(
    method: json["method"] == null ? null : json["method"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
    otp: json["otp"] == null ? null : json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "method": method == null ? null : method,
    "reg_no": regNo == null ? null : regNo,
    "otp": otp == null ? null : otp,
  };
}
