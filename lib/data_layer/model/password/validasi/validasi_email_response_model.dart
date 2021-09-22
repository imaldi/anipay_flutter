// To parse this JSON data, do
//
//     final validasiEmailResponseModel = validasiEmailResponseModelFromJson(jsonString);

import 'dart:convert';

ValidasiEmailResponseModel validasiEmailResponseModelFromJson(String str) => ValidasiEmailResponseModel.fromJson(json.decode(str));

String? validasiEmailResponseModelToJson(ValidasiEmailResponseModel data) => json.encode(data.toJson());

class ValidasiEmailResponseModel {
  ValidasiEmailResponseModel({
    this.description,
    this.start,
    this.total,
    this.session,
    this.data,
  });

  String? description;
  String? start;
  String? total;
  String? session;
  List<Datum>? data;

  ValidasiEmailResponseModel copyWith({
    String? description,
    String? start,
    String? total,
    String? session,
    List<Datum>? data,
  }) =>
      ValidasiEmailResponseModel(
        description: description ?? this.description,
        start: start ?? this.start,
        total: total ?? this.total,
        session: session ?? this.session,
        data: data ?? this.data,
      );

  factory ValidasiEmailResponseModel.fromJson(Map<String, dynamic> json) => ValidasiEmailResponseModel(
    description: json["description"] == null ? null : json["description"],
    start: json["start"] == null ? null : json["start"],
    total: json["total"] == null ? null : json["total"],
    session: json["session"] == null ? null : json["session"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "description": description == null ? null : description,
    "start": start == null ? null : start,
    "total": total == null ? null : total,
    "session": session == null ? null : session,
    "data": data == null ? null : List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
  };
}

class Datum {
  Datum({
    this.countResetPassword,
    this.otp,
  });

  String? countResetPassword;
  String? otp;

  Datum copyWith({
    String? countResetPassword,
    String? otp,
  }) =>
      Datum(
        countResetPassword: countResetPassword ?? this.countResetPassword,
        otp: otp ?? this.otp,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    countResetPassword: json["countResetPassword"] == null ? null : json["countResetPassword"],
    otp: json["otp"] == null ? null : json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "countResetPassword": countResetPassword == null ? null : countResetPassword,
    "otp": otp == null ? null : otp,
  };
}
