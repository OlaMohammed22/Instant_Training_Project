import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/repos/doctor_call_repo.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'accept_or_reject_doctor_call_event.dart';
part 'accept_or_reject_doctor_call_state.dart';

class AcceptOrRejectDoctorCallBloc
    extends Bloc<AcceptOrRejectDoctorCallEvent, AcceptOrRejectDoctorCallState> {
  AcceptOrRejectDoctorCallBloc() : super(AcceptOrRejectDoctorCallInitial()) {
    on<AcceptCallEvent>((event, emit) async {
      emit(AcceptOrRejectDoctorCallLoading());
      Either<Failure, String> response =
          await DoctorCallRepo().acceptCall(callID: event.callID);
      response.fold((failure) {
        emit(
          AcceptOrRejectDoctorCallFailure(errMessage: failure.errMessage),
        );
      }, (Success) {
        emit(
          AcceptOrRejectDoctorCallSuccess(message: "Call Aceppted"),
        );
      });
    });

    on<RejectCallEvent>((event, emit) async {
      emit(AcceptOrRejectDoctorCallLoading());
      Either<Failure, String> response =
          await DoctorCallRepo().rejectCall(callID: event.callID);
      response.fold((failure) {
        emit(
          AcceptOrRejectDoctorCallFailure(errMessage: failure.errMessage),
        );
      }, (Success) {
        emit(
          AcceptOrRejectDoctorCallSuccess(message: "Call Rejected"),
        );
      });
    });
  }
}
