part of 'accept_or_reject_doctor_call_bloc.dart';

class AcceptOrRejectDoctorCallState extends Equatable {
  const AcceptOrRejectDoctorCallState();

  @override
  List<Object> get props => [];
}

class AcceptOrRejectDoctorCallInitial extends AcceptOrRejectDoctorCallState {}

class AcceptOrRejectDoctorCallLoading extends AcceptOrRejectDoctorCallState {}

class AcceptOrRejectDoctorCallSuccess extends AcceptOrRejectDoctorCallState {
  final String message;

  AcceptOrRejectDoctorCallSuccess({required this.message});
}

class AcceptOrRejectDoctorCallFailure extends AcceptOrRejectDoctorCallState {
  final String errMessage;

  AcceptOrRejectDoctorCallFailure({required this.errMessage});
}
