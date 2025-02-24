part of 'accept_or_reject_doctor_call_bloc.dart';

abstract class AcceptOrRejectDoctorCallEvent extends Equatable {
  const AcceptOrRejectDoctorCallEvent();

  @override
  List<Object> get props => [];
}

// Event for Accepting a Call
class AcceptCallEvent extends AcceptOrRejectDoctorCallEvent {
  final String callID;
  const AcceptCallEvent(this.callID);

  @override
  List<Object> get props => [callID];
}

// Event for Rejecting a Call
class RejectCallEvent extends AcceptOrRejectDoctorCallEvent {
  final String callID;
  const RejectCallEvent(this.callID);

  @override
  List<Object> get props => [callID];
}
