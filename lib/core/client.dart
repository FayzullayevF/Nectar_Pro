import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://8095-89-236-218-41.ngrok-free.app//api/v1"),
  );

  Future<bool> register(String password, String email, String username) async {
    var response = await dio.post(
      "/auth/register",
      data: {"email": email, "password": password, "username": username},
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

}
