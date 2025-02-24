import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/models/doctor_call_details_info_model/data.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/repos/doctor_call_repo.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'get_doctor_call_details_event.dart';
part 'get_doctor_call_details_state.dart';

class GetDoctorCallDetailsBloc
    extends Bloc<GetDoctorCallDetailsEvent, GetDoctorCallDetailsState> {
  GetDoctorCallDetailsBloc() : super(GetDoctorCallDetailsInitial()) {
    on<FetchDoctorCallDetails>((event, emit) async {
      emit(GetDoctorCallDetailsLoading());
      Either<Failure, Data> response =
          await DoctorCallRepo().displayCallDetails(callID: event.callID);
      response.fold((failure) {
        emit(
          GetDoctorCallDetailsFailure(errMessage: failure.errMessage),
        );
      }, (Success) {
        emit(
          GetDoctorCallDetailsSuccess(data: Success),
        );
      });
    });
  }
}
