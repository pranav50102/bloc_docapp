part of 'login_bloc.dart';

@immutable
sealed class LoginState {
  late LoginResponse loginResponse;
  LoginState({required this.loginResponse});
}

final class LoginLoggedOut extends LoginState {
  LoginLoggedOut() : super(loginResponse: LoginResponse(status: null, message: "", userDetails: UserInfo(userId: 0, hospitalId: 0, fiscalYearId: 0, firstName: "", lastName: "")));
}

final class LoginSuccess extends LoginState {
  LoginSuccess({required LoginResponse loginResponse}) : super(loginResponse: loginResponse);
}

final class LoginFailure extends LoginState {
  LoginFailure({required LoginResponse loginResponse}) : super(loginResponse: loginResponse);
}

final class LoginError extends LoginState {
  LoginError() : super(loginResponse: LoginResponse(status: null, message: "", userDetails:  UserInfo(userId: 0, hospitalId: 0, fiscalYearId: 0, firstName: "", lastName: "")));
}

final class LoginLoading extends LoginState {
  LoginLoading() : super(loginResponse: LoginResponse(status: null, message: "", userDetails:  UserInfo(userId: 0, hospitalId: 0, fiscalYearId: 0, firstName: "", lastName: "")));
}

