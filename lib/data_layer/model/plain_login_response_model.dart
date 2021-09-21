// To parse this JSON data, do
//
//     final userRegistrationAnipayRequest = userRegistrationAnipayRequestFromJson(jsonString);

import 'dart:convert';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:shared_preferences/shared_preferences.dart';

PlainLoginResponseModel userRegistrationAnipayRequestFromJson(String str) => PlainLoginResponseModel.fromJson(json.decode(str));

String? userRegistrationAnipayRequestToJson(PlainLoginResponseModel data) => json.encode(data.toJson());

class PlainLoginResponseModel {
  PlainLoginResponseModel({
    this.status,
    this.description,
    this.start,
    this.total,
    this.session,
    this.trxseckey,
    this.data,
  });

  String? status;
  String? description;
  String? start;
  String? total;
  String? session;
  String? trxseckey;
  List<UserProfile>? data;

  PlainLoginResponseModel copyWith({
    String? status,
    String? description,
    String? start,
    String? total,
    String? session,
    String? trxseckey,
    List<UserProfile>? data,
  }) =>
      PlainLoginResponseModel(
        status: status ?? this.status,
        description: description ?? this.description,
        start: start ?? this.start,
        total: total ?? this.total,
        session: session ?? this.session,
        trxseckey: trxseckey ?? this.trxseckey,
        data: data ?? this.data,
      );

  factory PlainLoginResponseModel.fromJson(Map<String, dynamic> json) => PlainLoginResponseModel(
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    start: json["start"] == null ? null : json["start"],
    total: json["total"] == null ? null : json["total"],
    session: json["session"] == null ? null : json["session"],
    trxseckey: json["trxseckey"] == null ? null : json["trxseckey"],
    data: json["data"] == null ? null : List<UserProfile>.from(json["data"].map((x) => UserProfile.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "start": start == null ? null : start,
    "total": total == null ? null : total,
    "session": session == null ? null : session,
    "trxseckey": trxseckey == null ? null : trxseckey,
    // TODO because this is not my API, need further check for null map data
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class UserProfile {
  UserProfile({
    this.aktivasiFlag,
    this.bankjatengva,
    this.bcava,
    this.bnisva,
    this.donasi,
    this.isLogin,
    this.loketname,
    this.merchantId,
    this.namaSantri,
    this.noKartu,
    this.noSantri,
    this.noregPartner,
    this.trxseckey,
    this.pinTransaksi,
    this.terminalId,
    this.tipePengguna,
    this.flagSantri,
    this.tipeDagangan,
    this.transferFlag,
    this.userfullname,
    this.userid,
    this.username,
    this.userrole,
    this.memberMyntStatus,
    this.myntId,
    this.myntNumber,
    this.myntPhone,
    this.santri,
  });

  String? aktivasiFlag;
  String? bankjatengva;
  String? bcava;
  String? bnisva;
  String? donasi;
  int? isLogin;
  String? loketname;
  String? merchantId;
  String? namaSantri;
  String? noKartu;
  String? noSantri;
  String? noregPartner;
  String? trxseckey;
  String? pinTransaksi;
  String? terminalId;
  String? tipePengguna;
  String? flagSantri;
  String? tipeDagangan;
  String? transferFlag;
  String? userfullname;
  int? userid;
  String? username;
  String? userrole;
  String? memberMyntStatus;
  String? myntId;
  String? myntNumber;
  String? myntPhone;
  List<Santri>? santri;

  static saveDataUserToSharedPref(SharedPreferences sharedPreferences, UserProfile userProfile) async {
    sharedPreferences.setString(USER_PROFILE_NAMA_LOKET, userProfile.loketname ?? "");
    sharedPreferences.setString(USER_PROFILE_NAMA_USER, userProfile.username ?? "");
    sharedPreferences.setString(USER_PROFILE_NOMOR_REGISTRASI, userProfile.noregPartner ?? "");
    // TODO ask which is the correct field
    sharedPreferences.setString(USER_PROFILE_NO_VA_MYNT, userProfile.bcava ?? "");
    // TODO ask which is the correct field
    // sharedPreferences.setString(USER_PROFILE_EMAIL, userProfile.loketname ?? "");
    // TODO ask which is the correct field
    sharedPreferences.setString(USER_PROFILE_NO_PONSEL, userProfile.myntPhone ?? "");
    // TODO ask which is the correct field
    // sharedPreferences.setString(USER_PROFILE_PEKERJAAN, userProfile.userrole ?? "");
    // TODO ask which is the correct field
    // sharedPreferences.setString(USER_PROFILE_ALAMAT, userProfile.donasi ?? "");
  }

  UserProfile copyWith({
    String? aktivasiFlag,
    String? bankjatengva,
    String? bcava,
    String? bnisva,
    String? donasi,
    int? isLogin,
    String? loketname,
    String? merchantId,
    String? namaSantri,
    String? noKartu,
    String? noSantri,
    String? noregPartner,
    String? trxseckey,
    String? pinTransaksi,
    String? terminalId,
    String? tipePengguna,
    String? flagSantri,
    String? tipeDagangan,
    String? transferFlag,
    String? userfullname,
    int? userid,
    String? username,
    String? userrole,
    String? memberMyntStatus,
    String? myntId,
    String? myntNumber,
    String? myntPhone,
    List<Santri>? santri,
  }) =>
      UserProfile(
        aktivasiFlag: aktivasiFlag ?? this.aktivasiFlag,
        bankjatengva: bankjatengva ?? this.bankjatengva,
        bcava: bcava ?? this.bcava,
        bnisva: bnisva ?? this.bnisva,
        donasi: donasi ?? this.donasi,
        isLogin: isLogin ?? this.isLogin,
        loketname: loketname ?? this.loketname,
        merchantId: merchantId ?? this.merchantId,
        namaSantri: namaSantri ?? this.namaSantri,
        noKartu: noKartu ?? this.noKartu,
        noSantri: noSantri ?? this.noSantri,
        noregPartner: noregPartner ?? this.noregPartner,
        trxseckey: trxseckey ?? this.trxseckey,
        pinTransaksi: pinTransaksi ?? this.pinTransaksi,
        terminalId: terminalId ?? this.terminalId,
        tipePengguna: tipePengguna ?? this.tipePengguna,
        flagSantri: flagSantri ?? this.flagSantri,
        tipeDagangan: tipeDagangan ?? this.tipeDagangan,
        transferFlag: transferFlag ?? this.transferFlag,
        userfullname: userfullname ?? this.userfullname,
        userid: userid ?? this.userid,
        username: username ?? this.username,
        userrole: userrole ?? this.userrole,
        memberMyntStatus: memberMyntStatus ?? this.memberMyntStatus,
        myntId: myntId ?? this.myntId,
        myntNumber: myntNumber ?? this.myntNumber,
        myntPhone: myntPhone ?? this.myntPhone,
        santri: santri ?? this.santri,
      );

  factory UserProfile.fromJson(Map<String, dynamic> json) => UserProfile(
    aktivasiFlag: json["aktivasiFlag"] == null ? null : json["aktivasiFlag"],
    bankjatengva: json["bankjatengva"] == null ? null : json["bankjatengva"],
    bcava: json["bcava"] == null ? null : json["bcava"],
    bnisva: json["bnisva"] == null ? null : json["bnisva"],
    donasi: json["donasi"] == null ? null : json["donasi"],
    isLogin: json["is_login"] == null ? null : json["is_login"],
    loketname: json["loketname"] == null ? null : json["loketname"],
    merchantId: json["merchantId"] == null ? null : json["merchantId"],
    namaSantri: json["nama_santri"] == null ? null : json["nama_santri"],
    noKartu: json["no_kartu"] == null ? null : json["no_kartu"],
    noSantri: json["no_santri"] == null ? null : json["no_santri"],
    noregPartner: json["noregPartner"] == null ? null : json["noregPartner"],
    trxseckey: json["trxseckey"] == null ? null : json["trxseckey"],
    pinTransaksi: json["pinTransaksi"] == null ? null : json["pinTransaksi"],
    terminalId: json["terminalId"] == null ? null : json["terminalId"],
    tipePengguna: json["tipe_pengguna"] == null ? null : json["tipe_pengguna"],
    flagSantri: json["flagSantri"] == null ? null : json["flagSantri"],
    tipeDagangan: json["tipe_dagangan"] == null ? null : json["tipe_dagangan"],
    transferFlag: json["transferFlag"] == null ? null : json["transferFlag"],
    userfullname: json["userfullname"] == null ? null : json["userfullname"],
    userid: json["userid"] == null ? null : json["userid"],
    username: json["username"] == null ? null : json["username"],
    userrole: json["userrole"] == null ? null : json["userrole"],
    memberMyntStatus: json["memberMynt_status"] == null ? null : json["memberMynt_status"],
    myntId: json["myntID"] == null ? null : json["myntID"],
    myntNumber: json["myntNumber"] == null ? null : json["myntNumber"],
    myntPhone: json["myntPhone"] == null ? null : json["myntPhone"],
    santri: json["santri"] == null ? null : List<Santri>.from(json["santri"].map((x) => Santri.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "aktivasiFlag": aktivasiFlag == null ? null : aktivasiFlag,
    "bankjatengva": bankjatengva == null ? null : bankjatengva,
    "bcava": bcava == null ? null : bcava,
    "bnisva": bnisva == null ? null : bnisva,
    "donasi": donasi == null ? null : donasi,
    "is_login": isLogin == null ? null : isLogin,
    "loketname": loketname == null ? null : loketname,
    "merchantId": merchantId == null ? null : merchantId,
    "nama_santri": namaSantri == null ? null : namaSantri,
    "no_kartu": noKartu == null ? null : noKartu,
    "no_santri": noSantri == null ? null : noSantri,
    "noregPartner": noregPartner == null ? null : noregPartner,
    "trxseckey": trxseckey == null ? null : trxseckey,
    "pinTransaksi": pinTransaksi == null ? null : pinTransaksi,
    "terminalId": terminalId == null ? null : terminalId,
    "tipe_pengguna": tipePengguna == null ? null : tipePengguna,
    "flagSantri": flagSantri == null ? null : flagSantri,
    "tipe_dagangan": tipeDagangan == null ? null : tipeDagangan,
    "transferFlag": transferFlag == null ? null : transferFlag,
    "userfullname": userfullname == null ? null : userfullname,
    "userid": userid == null ? null : userid,
    "username": username == null ? null : username,
    "userrole": userrole == null ? null : userrole,
    "memberMynt_status": memberMyntStatus == null ? null : memberMyntStatus,
    "myntID": myntId == null ? null : myntId,
    "myntNumber": myntNumber == null ? null : myntNumber,
    "myntPhone": myntPhone == null ? null : myntPhone,
    // TODO because this is not my API, need further check for null map data
    "santri": santri == null ? null : List<dynamic>.from(santri!.map((x) => x.toJson())),
  };
}

class Santri {
  Santri({
    this.idSantri,
    this.kelas,
    this.namaSantri,
    this.noKartu,
    this.noSantri,
    this.noregKoordinator,
    this.status,
    this.statusKartu,
    this.tahunAjaran,
  });

  String? idSantri;
  String? kelas;
  String? namaSantri;
  String? noKartu;
  String? noSantri;
  String? noregKoordinator;
  String? status;
  String? statusKartu;
  String? tahunAjaran;

  Santri copyWith({
    String? idSantri,
    String? kelas,
    String? namaSantri,
    String? noKartu,
    String? noSantri,
    String? noregKoordinator,
    String? status,
    String? statusKartu,
    String? tahunAjaran,
  }) =>
      Santri(
        idSantri: idSantri ?? this.idSantri,
        kelas: kelas ?? this.kelas,
        namaSantri: namaSantri ?? this.namaSantri,
        noKartu: noKartu ?? this.noKartu,
        noSantri: noSantri ?? this.noSantri,
        noregKoordinator: noregKoordinator ?? this.noregKoordinator,
        status: status ?? this.status,
        statusKartu: statusKartu ?? this.statusKartu,
        tahunAjaran: tahunAjaran ?? this.tahunAjaran,
      );

  factory Santri.fromJson(Map<String, dynamic> json) => Santri(
    idSantri: json["id_santri"] == null ? null : json["id_santri"],
    kelas: json["kelas"] == null ? null : json["kelas"],
    namaSantri: json["nama_santri"] == null ? null : json["nama_santri"],
    noKartu: json["no_kartu"] == null ? null : json["no_kartu"],
    noSantri: json["no_santri"] == null ? null : json["no_santri"],
    noregKoordinator: json["noreg_koordinator"] == null ? null : json["noreg_koordinator"],
    status: json["status"] == null ? null : json["status"],
    statusKartu: json["status_kartu"] == null ? null : json["status_kartu"],
    tahunAjaran: json["tahun_ajaran"] == null ? null : json["tahun_ajaran"],
  );

  Map<String, dynamic> toJson() => {
    "id_santri": idSantri == null ? null : idSantri,
    "kelas": kelas == null ? null : kelas,
    "nama_santri": namaSantri == null ? null : namaSantri,
    "no_kartu": noKartu == null ? null : noKartu,
    "no_santri": noSantri == null ? null : noSantri,
    "noreg_koordinator": noregKoordinator == null ? null : noregKoordinator,
    "status": status == null ? null : status,
    "status_kartu": statusKartu == null ? null : statusKartu,
    "tahun_ajaran": tahunAjaran == null ? null : tahunAjaran,
  };
}
