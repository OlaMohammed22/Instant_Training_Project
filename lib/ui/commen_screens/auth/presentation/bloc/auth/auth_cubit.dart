import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/auth_repository.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      final user = await _authRepository.login(email, password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(erMessage: e.toString()));
    }
  }
}
