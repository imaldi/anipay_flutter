// To parse this JSON data, do
//
//     final validasiNoHpResponseModel = validasiNoHpResponseModelFromJson(jsonString);

import 'dart:convert';

ValidasiNoHpResponseModel validasiNoHpResponseModelFromJson(String str) => ValidasiNoHpResponseModel.fromJson(json.decode(str));

String? validasiNoHpResponseModelToJson(ValidasiNoHpResponseModel data) => json.encode(data.toJson());

class ValidasiNoHpResponseModel {
  ValidasiNoHpResponseModel({
    this.status,
    this.description,
    this.start,
    this.total,
    this.data,
    this.data2,
  });

  String? status;
  String? description;
  String? start;
  String? total;
  List<Dat>? data;
  List<Dat>? data2;

  ValidasiNoHpResponseModel copyWith({
    String? status,
    String? description,
    String? start,
    String? total,
    List<Dat>? data,
    List<Dat>? data2,
  }) =>
      ValidasiNoHpResponseModel(
        status: status ?? this.status,
        description: description ?? this.description,
        start: start ?? this.start,
        total: total ?? this.total,
        data: data ?? this.data,
        data2: data2 ?? this.data2,
      );

  factory ValidasiNoHpResponseModel.fromJson(Map<String, dynamic> json) => ValidasiNoHpResponseModel(
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    start: json["start"] == null ? null : json["start"],
    total: json["total"] == null ? null : json["total"],
    data: json["data"] == null ? null : List<Dat>.from(json["data"].map((x) => Dat.fromJson(x))),
    data2: json["data2"] == null ? null : List<Dat>.from(json["data2"].map((x) => Dat.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "start": start == null ? null : start,
    "total": total == null ? null : total,
    "data": data == null ? null : List<dynamic>.from(data?.map((x) => x.toJson()) ?? []),
    "data2": data2 == null ? null : List<dynamic>.from(data2?.map((x) => x.toJson()) ?? []),
  };
}

class Dat {
  Dat({
    this.otp,
  });

  String? otp;

  Dat copyWith({
    String? otp,
  }) =>
      Dat(
        otp: otp ?? this.otp,
      );

  factory Dat.fromJson(Map<String, dynamic> json) => Dat(
    otp: json["otp"] == null ? null : json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "otp": otp == null ? null : otp,
  };
}
