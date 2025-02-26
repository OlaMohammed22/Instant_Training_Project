import 'package:untitled36/core/utils/api_service.dart';

import '../model/user_details_model.dart';

class ProfileRepository {
  final ApiService _apiService = ApiService();

  Future<UserDetailsModel> showProfile(int? id, String? token) async {
    final response =
        await _apiService.post(url: 'show-profile?user_id=$id', token: token);
    UserDetailsModel user = UserDetailsModel.fromJson(response);
    print(user);
    return user;
  }
}
