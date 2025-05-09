part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginUser extends LoginEvent{
  late LoginInput loginInput;
  LoginUser({required this.loginInput});
}
