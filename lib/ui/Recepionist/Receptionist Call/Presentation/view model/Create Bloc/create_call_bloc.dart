import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/create_call_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

part 'create_call_event.dart';
part 'create_call_state.dart';

class CreateCallBloc extends Bloc<CreateCallEvent, CreateCallState> {
  CreateCallBloc() : super(CreateCallInitial()) {
    on<CreateCallEvent>((event, emit) async {
      emit(CreateCallLoading());
      Either<Failure, String> response = await ReceptionistCallsRepo()
          .createNewCall(createCallInfoModel: event.createCallInfoModel);
      response.fold((failure) {
        emit(
          CreateCallFailure(errMessage: failure.errMessage),
        );
      }, (success) {
        emit(CreateCallSuccess());
      });
    });
  }
}
