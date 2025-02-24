import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/repos/doctor_call_repo.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'get_doctors_call_event.dart';
part 'get_doctors_call_state.dart';

class GetDoctorsCallBloc
    extends Bloc<GetDoctorsCallEvent, GetDoctorsCallState> {
  GetDoctorsCallBloc() : super(GetDoctorsCallInitial()) {
    on<GetDoctorsCallEvent>((event, emit) async {
      emit(GetDoctorsCallLoading());
      Either<Failure, List<Datum>> response =
          await DoctorCallRepo().displayAllCalls();
      response.fold((failure) {
        emit(
          GetDoctorsCallFailure(errMessage: failure.errMessage),
        );
      }, (success) {
        emit(
          GetDoctorsCallSuccess(data: success),
        );
      });
    });
  }
}
