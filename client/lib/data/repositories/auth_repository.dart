import '../database/app_database.dart';
import '../../services/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();
  final AppDatabase _database = AppDatabase();

  Future<String> login(String username, String password) async {
    final token = await _apiService.login(username, password);
    await _database.saveUser(username); // Store locally
    return token;
  }
}