import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Hr/Reports/Presentation/cubit/profile/profile_state.dart';
import 'package:untitled36/ui/Hr/Reports/data/repository/profile_repository.dart';

import '../../../../../../core/utils/storage_service.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileCubit(this._profileRepository) : super(ProfileInitial());

  Future<void> showProfile(int? userId) async {
    emit(ProfileLoading());
    try {
      int? id = await StorageService.getId();
      String? token = await StorageService.getToken();
      final user = await _profileRepository.showProfile(
          userId != null ? userId : id, token);
      emit(ProfileLoaded(
          id: id?.toString() ?? "No ID",
          token: token ?? "No Token",
          user: user));
    } catch (e) {
      emit(ProfileFailure(erMessage: e.toString()));
    }
  }
}
