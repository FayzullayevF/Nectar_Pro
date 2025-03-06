import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/client.dart';
import 'package:nectar/features/auth_screen/data/repositories_impl/auth_repository.dart';
import 'package:nectar/features/auth_screen/presentation/blocs/login_view_model.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/sign_up_form_field.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/texts.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.vm});

  final LoginViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (context) =>
              LoginViewModel(repo: AuthRepository(client: ApiClient())),
      builder: (context, index) {
        final vm = context.read<LoginViewModel>();
        return Scaffold(
          body: ListView(
            children: [
              SizedBox(height: 100),
              TextsMain(text: "Login"),
              SignUpFormfield(
                text: "Email",
                controller: vm.emailController,
                hindText: "Email",
              ),
              SignUpFormfield(
                text: "Password",
                controller: vm.passwordController,
                hindText: "Password",
              ),
              ElevatedButton(
                onPressed: () {
                  vm.load(vm.emailController.text, vm.passwordController.text);
                  context.go("/home");
                },
                child: Text("Login"),
              ),
            ],
          ),
        );
      },
    );
  }
}
