import 'package:untitled36/core/utils/storage_service.dart';

import '../../../../../core/utils/api_service.dart';
import '../model/register_model.dart';
import '../model/user_details_model.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<RegisterModel> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String gender,
    required String birthday,
    required String status,
    required String address,
    required String mobile,
    required String specialist,
    required String type,
  }) async {
    final response = await _apiService.post(url: "register", body: {
      "email": email,
      "password": password,
      "first_name": firstName,
      "last_name": lastName,
      "gender": gender,
      "birthday": birthday,
      "status": status,
      "address": address,
      "mobile": mobile,
      "specialist": specialist,
      "type": type,
    });

    print(response);
    return RegisterModel.fromJson(response);
  }

  Future<UserDetailsModel> login(String email, String password) async {
    final response = await _apiService.post(url: "login", body: {
      "email": email,
      "password": password,
    });

    UserDetailsModel user = UserDetailsModel.fromJson(response);

    StorageService.saveId(user.data!.id!);
    print(await StorageService.getId());
    StorageService.saveToken(user.data?.accessToken ?? '');
    print(await StorageService.getToken());

    return user;
  }
}
