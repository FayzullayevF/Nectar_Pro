import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:nectar/core/secure_storage.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://kiwi-glorious-mule.ngrok-free.app/api/v1"),
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

  Future<bool> login(String email, String password) async {
    var response = await dio.post(
      "/auth/login",
      data: {"email": email, "password": password},
    );
    if(response.statusCode == 200){
      var data = Map<String, String>.from(response.data);
      SecureStorage.saveToken(data["access_token"]!);
      return true;
    }else{
        throw Exception("Access token did not come");
    }
  }
}
