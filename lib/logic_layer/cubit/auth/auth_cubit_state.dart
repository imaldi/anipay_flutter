part of 'auth_cubit.dart';


class AuthCubitState extends Equatable {
  UserRegisterAnipayResponse? registeredUser;
  UserRegistrationAnipayRequest? registerRequest;
  bool isLoadingStatus;
  bool isStatusFailed;

  AuthCubitState({this.registeredUser, this.registerRequest, this.isLoadingStatus = false, this.isStatusFailed = false});

  @override
  List<Object?> get props => [registeredUser, registerRequest, isLoadingStatus, isStatusFailed];
}
