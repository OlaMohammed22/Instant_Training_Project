import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_event.dart';
import 'bloc_state.dart';

class CaseBloc extends Bloc<ChangingTheTab, Selected_tab> {
  CaseBloc() : super(Selected_tab(selectedtabindex: 0)) {
    on<ChangingTheTab>((event, emit) {  
      emit(state.copyWith(selectedtabindex: event.tabIndex));
    });
  }
}
class FingerprintBloc extends Bloc<FingerprintEvent, FingerprintState> {
  FingerprintBloc() : super(FingerprintInitial()) {
    on<VerifyFingerprint>(_onVerifyFingerprint);
  }

  Future<void> _onVerifyFingerprint(
      VerifyFingerprint event, Emitter<FingerprintState> emit) async {
    emit(FingerprintLoading());
    await Future.delayed(Duration(seconds: 2)); 
    emit(FingerprintSuccess());
  }
}
class LogicBloc extends Bloc<ChangingTheTab, Selected_tab> {
  LogicBloc() : super(Selected_tab(selectedtabindex: 0)) {
    on<ChangingTheTab>((event, emit) {
      emit(state.copyWith(selectedtabindex: event.tabIndex));
    });
  }
}

