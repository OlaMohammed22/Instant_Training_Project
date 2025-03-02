import '../../data/model/users_by_type_model.dart';

abstract class UsersByTypeState {}

class UsersByTypeInitial extends UsersByTypeState {}

class UsersByTypeLoading extends UsersByTypeState {}

class UsersByTypeLoaded extends UsersByTypeState {
  final UsersByTypeModel users;

  UsersByTypeLoaded(this.users);
}

class UsersByTypeFailure extends UsersByTypeState {
  final String erMessage;

  UsersByTypeFailure(this.erMessage);
}
