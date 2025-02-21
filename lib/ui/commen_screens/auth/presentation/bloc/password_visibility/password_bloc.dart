import 'package:flutter_bloc/flutter_bloc.dart';

import 'password_event.dart';
import 'password_state.dart';

class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  PasswordBloc() : super(const PasswordState(isPasswordVisible: false)) {
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<PasswordState> emit) {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }
}
