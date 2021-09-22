// To parse this JSON data, do
//
//     final validasiEmailRequestModel = validasiEmailRequestModelFromJson(jsonString);

import 'dart:convert';

ValidasiEmailRequestModel validasiEmailRequestModelFromJson(String str) => ValidasiEmailRequestModel.fromJson(json.decode(str));

String? validasiEmailRequestModelToJson(ValidasiEmailRequestModel data) => json.encode(data.toJson());

class ValidasiEmailRequestModel {
  ValidasiEmailRequestModel({
    this.email,
    this.method,
    this.regNo,
  });

  String? email;
  String? method;
  String? regNo;

  ValidasiEmailRequestModel copyWith({
    String? email,
    String? method,
    String? regNo,
  }) =>
      ValidasiEmailRequestModel(
        email: email ?? this.email,
        method: method ?? this.method,
        regNo: regNo ?? this.regNo,
      );

  factory ValidasiEmailRequestModel.fromJson(Map<String, dynamic> json) => ValidasiEmailRequestModel(
    email: json["email"] == null ? null : json["email"],
    method: json["method"] == null ? null : json["method"],
    regNo: json["reg_no"] == null ? null : json["reg_no"],
  );

  Map<String, dynamic> toJson() => {
    "email": email == null ? null : email,
    "method": method == null ? null : method,
    "reg_no": regNo == null ? null : regNo,
  };
}
