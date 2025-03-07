import 'package:flutter/material.dart';
import 'package:nectar/features/auth_screen/data/repositories_impl/auth_repository.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({required AuthRepository repo}) : _repo = repo;

  final AuthRepository _repo;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool? isSuccess;

  // void dispose(){
  //   emailController.dispose();
  //   passwordController.dispose();
  // }

  Future<bool> load() async {
    var result = await _repo.login(
      emailController.text,
      passwordController.text,
    );
    return result;
  }
}
