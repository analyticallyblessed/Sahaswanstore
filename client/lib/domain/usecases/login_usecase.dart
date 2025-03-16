import '../repositories/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase(this._repository);

  Future<String> execute(String username, String password) {
    return _repository.login(username, password);
  }
}