import '../../../../../core/utils/api_service.dart';
import '../model/users_by_type_model.dart';

class UsersByTypeRepository {
  final ApiService _apiService = ApiService();

  Future<UsersByTypeModel> fetchUsersByType(String Type, String token) async {
    final response =
        await _apiService.get(url: 'doctors?type=$Type', token: token);
    return UsersByTypeModel.fromJson(response);
  }
}
