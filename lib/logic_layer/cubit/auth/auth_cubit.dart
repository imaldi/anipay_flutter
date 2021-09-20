import 'package:anipay_flutter/data_layer/model/user_register_anipay_request.dart';
import 'package:anipay_flutter/data_layer/model/user_register_anipay_response.dart';
import 'package:anipay_flutter/data_layer/repos/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:http/http.dart' as http;

// import 'package:meta/meta.dart';

part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit() : super(AuthCubitState());
  LoginRepo _repo = LoginRepo();

  registerUser(UserRegistrationAnipayRequest user) async {
    try{
        emit(AuthCubitState(isLoadingStatus: true));
        emit(AuthCubitState(registerRequest: user, isLoadingStatus: false,));

    }catch (e){

    }
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