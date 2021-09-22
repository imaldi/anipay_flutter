// To parse this JSON data, do
//
//     final resetPinResponseModel = resetPinResponseModelFromJson(jsonString);

import 'dart:convert';

ResetPinResponseModel resetPinResponseModelFromJson(String str) => ResetPinResponseModel.fromJson(json.decode(str));

String? resetPinResponseModelToJson(ResetPinResponseModel data) => json.encode(data.toJson());

class ResetPinResponseModel {
  ResetPinResponseModel({
    this.status,
    this.description,
    this.data,
    this.start,
    this.total,
    this.data2,
  });

  String? status;
  String? description;
  String? data;
  String? start;
  String? total;
  String? data2;

  ResetPinResponseModel copyWith({
    String? status,
    String? description,
    String? data,
    String? start,
    String? total,
    String? data2,
  }) =>
      ResetPinResponseModel(
        status: status ?? this.status,
        description: description ?? this.description,
        data: data ?? this.data,
        start: start ?? this.start,
        total: total ?? this.total,
        data2: data2 ?? this.data2,
      );

  factory ResetPinResponseModel.fromJson(Map<String, dynamic> json) => ResetPinResponseModel(
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    data: json["data"] == null ? null : json["data"],
    start: json["start"] == null ? null : json["start"],
    total: json["total"] == null ? null : json["total"],
    data2: json["data2"] == null ? null : json["data2"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "data": data == null ? null : data,
    "start": start == null ? null : start,
    "total": total == null ? null : total,
    "data2": data2 == null ? null : data2,
  };
}
