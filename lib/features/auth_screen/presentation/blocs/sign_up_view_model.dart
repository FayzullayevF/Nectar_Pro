import 'package:flutter/material.dart';
import 'package:nectar/features/auth_screen/data/repositories_impl/auth_repository.dart';

class SignUpViewModel extends ChangeNotifier{
  SignUpViewModel({required SignUpRepository repo}): _repo = repo;
  final SignUpRepository _repo;
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool? isSucces;

  Future<void> register(String email, String password, String username)async{
    isSucces = await _repo.register(email, password, username);
    notifyListeners();
  }
  
  
 
}