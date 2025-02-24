part of 'get_nurse_calls_bloc.dart';

class GetNurseCallsState extends Equatable {
  const GetNurseCallsState();

  @override
  List<Object> get props => [];
}

class GetNurseCallsInitial extends GetNurseCallsState {}

class GetNurseCallsSuccess extends GetNurseCallsState {
  final List<Datum> data;

  GetNurseCallsSuccess({required this.data});
}

class GetNurseCallsFailure extends GetNurseCallsState {
  final String errMessage;

  GetNurseCallsFailure({required this.errMessage});
}

class GetNurseCallsLoading extends GetNurseCallsState {}
