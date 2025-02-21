import '../../../../../core/utils/api_service.dart';
import '../model/login_model.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<LoginModel> login(String email, String password) async {
    final response = await _apiService.post(url: "login", body: {
      "email": email,
      "password": password,
    });

    print(response);
    return LoginModel.fromJson(response);
  }
}
