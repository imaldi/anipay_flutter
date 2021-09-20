import 'dart:convert';
import 'dart:developer';

import 'package:anipay_flutter/data_layer/consts/string_consts.dart';
import 'package:anipay_flutter/data_layer/model/request_body.dart';
import 'package:anipay_flutter/data_layer/model/user_register_anipay_request.dart';
import 'package:anipay_flutter/data_layer/model/user_register_anipay_response.dart';
import 'package:anipay_flutter/data_layer/repos/login_repo.dart';
import 'package:anipay_flutter/logic_layer/functions/CryptoHash.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:http/http.dart' as http;

// import 'package:meta/meta.dart';

part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit() : super(AuthCubitState(registerRequest: UserRegistrationAnipayRequest(),registeredUser: UserRegisterAnipayResponse()));
  LoginRepo _repo = LoginRepo();

  registerUser() async {
    state.registerRequest?.method = ANIPAY_USER_REGISTRATION;
    state.registerRequest?.noregagen = "noreragen";
    state.registerRequest?.norekBmt = "1234567890";
    state.registerRequest?.pin = "7766";
    state.registerRequest?.serialNo = "776688";
    state.registerRequest?.telegramusername = "aldi7766";
    state.registerRequest?.myntType = "member";
            print("registerRequest: ${state.registerRequest?.toJson().toString()}");
    var afterEncrypt = CryptoHash.hashData(jsonEncode(state.registerRequest ?? UserRegistrationAnipayRequest()), ANIPAY_USER_REGISTRATION, SECRET_KEY);
    RequestBody requestTrx = RequestBody();
    requestTrx.data = afterEncrypt;
    requestTrx.method = ANIPAY_USER_REGISTRATION;
    requestTrx.sessionid = "";
    requestTrx.versioncode = "1";

    try{
        emit(AuthCubitState(isLoadingStatus: true));
        // _repo.registerUser(state.)
        var response = await _repo.registerUser(requestTrx);
        var registeredUser = UserRegisterAnipayResponse.fromJson(jsonDecode(response?.data));
        log("registeredUser from Auth repo: ${registeredUser.toJson().toString()}");

        emit(AuthCubitState(registerRequest: state.registerRequest, registeredUser: registeredUser, isLoadingStatus: false,));
    }catch (e){

    }
  }

  changeLocalRegisterRequest(UserRegistrationAnipayRequest registerRequest) async {
    emit(AuthCubitState(registerRequest: registerRequest));
    print("_userRegistrationAnipayRequest: ${state.registerRequest?.toJson().toString()}");

  }

  updateRegisterPasswordOrConfirmationPassword({String? password, String? confirmPassword}){
    emit(AuthCubitState(registerRequest: state.registerRequest,password: password ?? state.password, confPassword: confirmPassword ?? state.confPassword));
  }


  // getUserProfile() async {
  //   try {
  //     emit(AuthCubitState(UserRegisterAnipayResponse(),isLoadingStatus: true));
  //     EmployeeResponse? userResponse = await _repo.getProfile();
  //     EmployeeModel user = userResponse.data!.first;
  //     emit(AuthCubitState(user, isLoadingStatus: false,
  //     ));
  //     print("user stateCubit from getUserProfile : ${user}");
  //   } catch (e) {
  //     emit(AuthCubitState(
  //         state.registeredUser, isStatusFailed: true));
  //   }
  // }
}