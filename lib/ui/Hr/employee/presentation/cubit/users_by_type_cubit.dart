import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/employee/data/repository/users_by_type_repository.dart';
import 'package:untitled36/ui/Hr/employee/presentation/cubit/users_by_type_state.dart';

import '../../../../../core/utils/storage_service.dart';
import '../../data/model/users_by_type_model.dart';

class UsersByTypeCubit extends Cubit<UsersByTypeState> {
  final UsersByTypeRepository repository;

  UsersByTypeCubit()
      : repository = UsersByTypeRepository(),
        super(UsersByTypeInitial());

  void fetchUsersByType(String type) async {
    emit(UsersByTypeLoading());
    try {
      String? token = await StorageService.getToken();
      final UsersByTypeModel users =
          await repository.fetchUsersByType(type, token!);
      emit(UsersByTypeLoaded(users));
    } catch (e) {
      emit(UsersByTypeFailure(e.toString()));
    }
  }
}
