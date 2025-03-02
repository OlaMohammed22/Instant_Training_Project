import 'package:untitled36/ui/Hr/Reports/data/model/user_details_model.dart';

class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  final String id;
  final String token;
  final UserDetailsModel user;

  ProfileLoaded({
    required this.id,
    required this.token,
    required this.user,
  });
}

class ProfileFailure extends ProfileState {
  String erMessage;

  ProfileFailure({required this.erMessage});
}
