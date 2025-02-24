part of 'get_doctors_call_bloc.dart';

class GetDoctorsCallState extends Equatable {
  const GetDoctorsCallState();

  @override
  List<Object> get props => [];
}

class GetDoctorsCallInitial extends GetDoctorsCallState {}

class GetDoctorsCallSuccess extends GetDoctorsCallState {
  final List<Datum> data;

  GetDoctorsCallSuccess({required this.data});
}

class GetDoctorsCallFailure extends GetDoctorsCallState {
  final String errMessage;

  GetDoctorsCallFailure({required this.errMessage});
}

class GetDoctorsCallLoading extends GetDoctorsCallState {}
