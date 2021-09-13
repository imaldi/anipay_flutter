// To parse this JSON data, do
//
//     final requestBody = requestBodyFromJson(jsonString);

import 'dart:convert';

RequestBody requestBodyFromJson(String str) => RequestBody.fromJson(json.decode(str));

String? requestBodyToJson(RequestBody data) => json.encode(data.toJson());

class RequestBody {
  RequestBody({
    this.data,
    this.method,
    this.sessionid,
    this.versioncode,
  });

  String? data;
  String? method;
  String? sessionid;
  String? versioncode;

  RequestBody copyWith({
    String? data,
    String? method,
    String? sessionid,
    String? versioncode,
  }) =>
      RequestBody(
        data: data ?? this.data,
        method: method ?? this.method,
        sessionid: sessionid ?? this.sessionid,
        versioncode: versioncode ?? this.versioncode,
      );

  factory RequestBody.fromJson(Map<String, dynamic> json) => RequestBody(
    data: json["data"] == null ? null : json["data"],
    method: json["method"] == null ? null : json["method"],
    sessionid: json["sessionid"] == null ? null : json["sessionid"],
    versioncode: json["versioncode"] == null ? null : json["versioncode"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? null : data,
    "method": method == null ? null : method,
    "sessionid": sessionid == null ? null : sessionid,
    "versioncode": versioncode == null ? null : versioncode,
  };
}
