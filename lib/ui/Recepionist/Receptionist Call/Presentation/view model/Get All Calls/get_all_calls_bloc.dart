import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'get_all_calls_event.dart';
part 'get_all_calls_state.dart';

class GetAllCallsBloc extends Bloc<GetAllCallsEvent, GetAllCallsState> {
  String filterByDate = '';
  List<Datum> _list = [];
  GetAllCallsBloc() : super(GetAllCallsInitial()) {
    on<GetAllCallsEvent>((event, emit) async {
      emit(GetAllCallsLoading());
      Either<Failure, List<Datum>> response =
          await ReceptionistCallsRepo().displayAllCalls();
      response.fold(
        (failure) {
          emit(GetAllCallsFailure(errMessage: failure.errMessage));
        },
        (success) {
          _list = success;
          emit(GetAllCallsSuccess(receptionistCallInfoModel: success));
        },
      );
    });

    on<FilterCallsByDate>((event, emit) async {
      emit(
        GetAllCallsSuccess(
          receptionistCallInfoModel: _list,
        ),
      );
    });
  }
}
