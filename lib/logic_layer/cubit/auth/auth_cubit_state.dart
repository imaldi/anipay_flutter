part of 'auth_cubit.dart';


class AuthCubitState extends Equatable {
  UserRegisterAnipayResponse? registeredUser;
  UserRegistrationAnipayRequest? registerRequest;
  bool isLoadingStatus;
  bool isStatusFailed;
  String? password;
  String? confPassword;

  AuthCubitState({this.registeredUser, this.registerRequest, this.isLoadingStatus = false, this.isStatusFailed = false,this.password,this.confPassword});

  @override
  List<Object?> get props => [registeredUser, registerRequest, isLoadingStatus, isStatusFailed,password,confPassword];
}
