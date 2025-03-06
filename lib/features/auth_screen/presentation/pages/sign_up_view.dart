import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/client.dart';
import 'package:nectar/features/auth_screen/data/repositories_impl/auth_repository.dart';
import 'package:nectar/features/auth_screen/presentation/blocs/sign_up_view_model.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/sign_up_form_field.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/texts.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/texts_seondary.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (context) =>
              SignUpViewModel(repo: AuthRepository(client: ApiClient())),
      builder: (context, index) {
        final vm = context.read<SignUpViewModel>();
        return Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.only(left: 25),
            child: Form(
              key: vm.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Center(
                    child: SvgPicture.asset(
                      "assets/icons/carrot.svg",
                      fit: BoxFit.cover,
                      width: 47.84,
                      height: 55.64,
                    ),
                  ),
                  SizedBox(height: 101),
                  TextsMain(text: "Sign Up"),
                  TextsSecondary(text: "Enter your credentials to continue"),
                  SignUpFormfield(text: "Username", controller: vm.usernameController, hindText: "UserName"),
                  SignUpFormfield(text: "Email", controller: vm.emailController,  hindText: "Email"),
                  SignUpFormfield(text: "Password", controller: vm.passwordController, hindText: "Password"),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    vm.register(vm.emailController.text, vm.passwordController.text, vm.usernameController.text);
                  }, child: Text("Sign up"),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
