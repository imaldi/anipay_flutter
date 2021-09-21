// To parse this JSON data, do
//
//     final userRegisterAnipayResponse = userRegisterAnipayResponseFromJson(jsonString);

import 'dart:convert';

UserRegisterAnipayResponse userRegisterAnipayResponseFromJson(String str) => UserRegisterAnipayResponse.fromJson(json.decode(str));

String? userRegisterAnipayResponseToJson(UserRegisterAnipayResponse data) => json.encode(data.toJson());

class UserRegisterAnipayResponse {
  UserRegisterAnipayResponse({
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

  UserRegisterAnipayResponse copyWith({
    String? status,
    String? description,
    String? data,
    String? total,
    String? session,
    List<Start>? start,
  }) =>
      UserRegisterAnipayResponse(
        status: status ?? this.status,
        description: description ?? this.description,
        data: data ?? this.data,
        total: total ?? this.total,
        session: session ?? this.session,
        start: start ?? this.start,
      );

  factory UserRegisterAnipayResponse.fromJson(Map<String, dynamic> json) => UserRegisterAnipayResponse(
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
    "start": start == null ? null : List<dynamic>.from(start!.map((x) => x.toJson())),
  };
}

class Start {
  Start({
    this.customerData,
  });

  String? customerData;

  Start copyWith({
    String? customerData,
  }) =>
      Start(
        customerData: customerData ?? this.customerData,
      );

  factory Start.fromJson(Map<String, dynamic> json) => Start(
    customerData: json["customer_data"] == null ? null : json["customer_data"],
  );

  Map<String, dynamic> toJson() => {
    "customer_data": customerData == null ? null : customerData,
  };
}

//Hashed Example:
// {status: 00, description: SUCCESS,
// data:
// GEQiTUZIRBpKFUJkBl0JSgdfWjQjNBJCBxA0RkkJSQZNAl1_BQQ0ITY3aSwnL2g8NRYJdkoGQzQfPw0ERwtZCFN_Tgh1enNbdQZOCzZPfFIGXllzXHsCZ1hJBAI3C1EHSQVIdWQFMjl5S31cWFx2XHwkB0IZQxJCFRRCEhRGG0caSEhkBTZoKDQmYjIEPQ5KBVNIeiMyGkQcF0oaFE4WRRRDGUlGSXE1AwRqKgQsWCozRltuXUwCQxUcQhQUThZMFEMZR0ZJQhpzNHVcV2EEW3ckB2ZOBUFDFxdxMi1kIDQbSR9MdWlzU3hTTgkUSWpXB19SMjZ3TnNTTgdWT3dUNDgESgQJd31afUNnUlBLfVR0WAdmWAJXAgVPdwIyBQZqJTIqBHp3NGRxEDZcWEsHXTUkCTQVNFYBWUV-BB44CEAGdkoKd0g0IQ9hQAtXTwhcfFlVNCM0BA8
// }
