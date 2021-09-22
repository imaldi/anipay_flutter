// To parse this JSON data, do
//
//     final resetPasswordResponseModel = resetPasswordResponseModelFromJson(jsonString);

import 'dart:convert';

ResetPasswordResponseModel resetPasswordResponseModelFromJson(String str) => ResetPasswordResponseModel.fromJson(json.decode(str));

String? resetPasswordResponseModelToJson(ResetPasswordResponseModel data) => json.encode(data.toJson());

class ResetPasswordResponseModel {
  ResetPasswordResponseModel({
    this.status,
    this.description,
    this.data,
    this.total,
    this.session,
    this.start,
  });

  String? status;
  String? description;
  String? data;
  String? total;
  String? session;
  List<Start>? start;

  ResetPasswordResponseModel copyWith({
    String? status,
    String? description,
    String? data,
    String? total,
    String? session,
    List<Start>? start,
  }) =>
      ResetPasswordResponseModel(
        status: status ?? this.status,
        description: description ?? this.description,
        data: data ?? this.data,
        total: total ?? this.total,
        session: session ?? this.session,
        start: start ?? this.start,
      );

  factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) => ResetPasswordResponseModel(
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    data: json["data"] == null ? null : json["data"],
    total: json["total"] == null ? null : json["total"],
    session: json["session"] == null ? null : json["session"],
    start: json["start"] == null ? null : List<Start>.from(json["start"].map((x) => Start.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "data": data == null ? null : data,
    "total": total == null ? null : total,
    "session": session == null ? null : session,
    "start": start == null ? null : List<dynamic>.from(start?.map((x) => x.toJson()) ?? []),
  };
}

class Start {
  Start({
    this.countResetPassword,
  });

  String? countResetPassword;

  Start copyWith({
    String? countResetPassword,
  }) =>
      Start(
        countResetPassword: countResetPassword ?? this.countResetPassword,
      );

  factory Start.fromJson(Map<String, dynamic> json) => Start(
    countResetPassword: json["countResetPassword"] == null ? null : json["countResetPassword"],
  );

  Map<String, dynamic> toJson() => {
    "countResetPassword": countResetPassword == null ? null : countResetPassword,
  };
}
