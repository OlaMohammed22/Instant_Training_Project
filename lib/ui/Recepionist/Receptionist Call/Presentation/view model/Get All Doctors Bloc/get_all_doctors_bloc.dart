import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'get_all_doctors_event.dart';
part 'get_all_doctors_state.dart';

class GetAllDoctorsBloc extends Bloc<GetAllDoctorsEvent, GetAllDoctorsState> {
  GetAllDoctorsBloc() : super(GetAllDoctorsInitial()) {
    on<GetAllDoctorsEvent>((event, emit) async {
      emit(GetAllDoctorsLoading());
      Either<Failure, List<DoctorInfoModel>> response =
          await ReceptionistCallsRepo().getAllDoctors();
      response.fold((failure) {
        emit(
          GetAllDoctorsFailure(errMessage: failure.errMessage),
        );
      }, (success) {
        emit(
          GetAllDoctorsSuccess(data: success),
        );
      });
    });
  }
}
