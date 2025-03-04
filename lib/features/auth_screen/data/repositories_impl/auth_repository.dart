import 'package:nectar/core/client.dart';

class SignUpRepository {
  SignUpRepository({required this.client});
  final ApiClient client;

  Future<bool> register(String email, String password, String username) async{
    final bool registerRepo = await client.register(password, email, username);
    return registerRepo;
  }
}