// To parse this JSON data, do
//
//     final userRegistrationAnipayRequest = userRegistrationAnipayRequestFromJson(jsonString);

import 'dart:convert';

UserRegistrationAnipayRequest userRegistrationAnipayRequestFromJson(String str) => UserRegistrationAnipayRequest.fromJson(json.decode(str));

String? userRegistrationAnipayRequestToJson(UserRegistrationAnipayRequest data) => json.encode(data.toJson());

class UserRegistrationAnipayRequest {
  UserRegistrationAnipayRequest({
    this.alamatlengkap,
    this.email,
    this.method,
    this.namalengkap,
    this.namaloket,
    this.nomorhp,
    this.noregagen,
    this.norekBmt,
    this.password,
    this.pin,
    this.serialNo,
    this.telegramusername,
    this.myntType,
  });

  String? alamatlengkap;
  String? email;
  String? method;
  String? namalengkap;
  String? namaloket;
  String? nomorhp;
  String? noregagen;
  String? norekBmt;
  String? password;
  String? pin;
  String? serialNo;
  String? telegramusername;
  String? myntType;

  UserRegistrationAnipayRequest copyWith({
    String? alamatlengkap,
    String? email,
    String? method,
    String? namalengkap,
    String? namaloket,
    String? nomorhp,
    String? noregagen,
    String? norekBmt,
    String? password,
    String? pin,
    String? serialNo,
    String? telegramusername,
    String? myntType,
  }) =>
      UserRegistrationAnipayRequest(
        alamatlengkap: alamatlengkap ?? this.alamatlengkap,
        email: email ?? this.email,
        method: method ?? this.method,
        namalengkap: namalengkap ?? this.namalengkap,
        namaloket: namaloket ?? this.namaloket,
        nomorhp: nomorhp ?? this.nomorhp,
        noregagen: noregagen ?? this.noregagen,
        norekBmt: norekBmt ?? this.norekBmt,
        password: password ?? this.password,
        pin: pin ?? this.pin,
        serialNo: serialNo ?? this.serialNo,
        telegramusername: telegramusername ?? this.telegramusername,
        myntType: myntType ?? this.myntType,
      );

  factory UserRegistrationAnipayRequest.fromJson(Map<String, dynamic> json) => UserRegistrationAnipayRequest(
    alamatlengkap: json["alamatlengkap"] == null ? null : json["alamatlengkap"],
    email: json["email"] == null ? null : json["email"],
    method: json["method"] == null ? null : json["method"],
    namalengkap: json["namalengkap"] == null ? null : json["namalengkap"],
    namaloket: json["namaloket"] == null ? null : json["namaloket"],
    nomorhp: json["nomorhp"] == null ? null : json["nomorhp"],
    noregagen: json["noregagen"] == null ? null : json["noregagen"],
    norekBmt: json["norekBmt"] == null ? null : json["norekBmt"],
    password: json["password"] == null ? null : json["password"],
    pin: json["pin"] == null ? null : json["pin"],
    serialNo: json["serialNo"] == null ? null : json["serialNo"],
    telegramusername: json["telegramusername"] == null ? null : json["telegramusername"],
    myntType: json["mynt_type"] == null ? null : json["mynt_type"],
  );

  Map<String, dynamic> toJson() => {
    "alamatlengkap": alamatlengkap == null ? null : alamatlengkap,
    "email": email == null ? null : email,
    "method": method == null ? null : method,
    "namalengkap": namalengkap == null ? null : namalengkap,
    "namaloket": namaloket == null ? null : namaloket,
    "nomorhp": nomorhp == null ? null : nomorhp,
    "noregagen": noregagen == null ? null : noregagen,
    "norekBmt": norekBmt == null ? null : norekBmt,
    "password": password == null ? null : password,
    "pin": pin == null ? null : pin,
    "serialNo": serialNo == null ? null : serialNo,
    "telegramusername": telegramusername == null ? null : telegramusername,
    "mynt_type": myntType == null ? null : myntType,
  };
}
