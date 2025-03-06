import 'package:nectar/core/client.dart';

class AuthRepository {
  AuthRepository({required this.client});
  final ApiClient client;

  Future<bool> register(String email, String password, String username) async{
    final bool registerRepo = await client.register(password, email, username);
    return registerRepo;
  }

  Future<bool> login(String email, String password) async{
    final bool loginRepo = await client.login(email, password);
    return loginRepo;
  }
}