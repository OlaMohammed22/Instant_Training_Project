import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20All%20Nurse%20Bloc/get_all_nurse_event.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/view%20models/Get%20All%20Nurse%20Bloc/get_all_nurse_state.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/repos/doctor_call_repo.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

class GetAllNurseBloc extends Bloc<GetAllNurseEvent, GetAllNurseState> {
  GetAllNurseBloc() : super(GetAllNurseInitial()) {
    on<GetAllNurseEvent>((event, emit) async {
      emit(GetAllNurseLoading());
      Either<Failure, List<DoctorInfoModel>> response =
          await DoctorCallRepo().getAllNurses();
      response.fold((failure) {
        emit(
          GetAllNurseFailure(errMessage: failure.errMessage),
        );
      }, (success) {
        emit(
          GetAllNurseSuccess(data: success),
        );
      });
    });
  }
}
