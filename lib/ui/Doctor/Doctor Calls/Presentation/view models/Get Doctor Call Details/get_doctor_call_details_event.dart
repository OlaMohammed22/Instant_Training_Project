part of 'get_doctor_call_details_bloc.dart';

abstract class GetDoctorCallDetailsEvent extends Equatable {
  const GetDoctorCallDetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchDoctorCallDetails extends GetDoctorCallDetailsEvent {
  final String callID;
  const FetchDoctorCallDetails({required this.callID});

  @override
  List<Object> get props => [callID];
}

class AcceptDoctorCall extends GetDoctorCallDetailsEvent {
  final String callID;
  const AcceptDoctorCall({required this.callID});

  @override
  List<Object> get props => [callID];
}

class RejectDoctorCall extends GetDoctorCallDetailsEvent {
  final String callID;
  const RejectDoctorCall({required this.callID});

  @override
  List<Object> get props => [callID];
}
