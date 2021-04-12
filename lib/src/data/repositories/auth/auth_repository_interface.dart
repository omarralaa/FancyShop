import 'package:shop/src/data/models/auth_response.dart';

abstract class IAuthRepository {
  Future<AuthResponseModel> signInWithEmailAndPassword(
      String email, String password);

  Future<AuthResponseModel> signUp(Map<String, String> user);
}
