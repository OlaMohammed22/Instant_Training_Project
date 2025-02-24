part of 'get_all_calls_bloc.dart';

class GetAllCallsState extends Equatable {
  const GetAllCallsState();

  @override
  List<Object> get props => [];
}

class GetAllCallsInitial extends GetAllCallsState {}

class GetAllCallsSuccess extends GetAllCallsState {
  final List<Datum> receptionistCallInfoModel;

  GetAllCallsSuccess({required this.receptionistCallInfoModel});
}

class GetAllCallsFailure extends GetAllCallsState {
  final String errMessage;

  GetAllCallsFailure({required this.errMessage});
}

class GetAllCallsLoading extends GetAllCallsState {}
