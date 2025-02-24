import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Data/repos/nurse_call_repo.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'get_nurse_calls_event.dart';
part 'get_nurse_calls_state.dart';

class GetNurseCallsBloc extends Bloc<GetNurseCallsEvent, GetNurseCallsState> {
  GetNurseCallsBloc() : super(GetNurseCallsInitial()) {
    on<GetNurseCallsEvent>((event, emit) async {
      emit(GetNurseCallsLoading());
      Either<Failure, List<Datum>> response =
          await NurseCallRepo().displayAllCalls();
      response.fold((failure) {
        emit(
          GetNurseCallsFailure(errMessage: failure.errMessage),
        );
      }, (success) {
        emit(
          GetNurseCallsSuccess(data: success),
        );
      });
    });
  }
}
