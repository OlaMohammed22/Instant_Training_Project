class AuthState {}

class AuthInitial extends AuthState {}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginFailure extends AuthState {
  String erMessage;
  LoginFailure({required this.erMessage});
}

class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterFailure extends AuthState {
  String erMessage;
  RegisterFailure({required this.erMessage});
}

class OtpLoading extends AuthState {}

class OtpSent extends AuthState {}

class OtpVerified extends AuthState {}

class OtpFailure extends AuthState {
  final String erMessage;
  OtpFailure(this.erMessage);
}
