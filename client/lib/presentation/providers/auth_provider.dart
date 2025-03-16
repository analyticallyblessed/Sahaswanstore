import 'package:flutter/foundation.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../data/repositories/auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  final LoginUsecase _loginUsecase = LoginUsecase(AuthRepository());
  String? _token;

  String? get token => _token;

  Future<void> login(String username, String password) async {
    _token = await _loginUsecase.execute(username, password);
    notifyListeners();
  }
}