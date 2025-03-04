import 'package:flutter/material.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/sign_up_form_field.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});

  final controller = TextEditingController();
  final controller2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SignUpFormfield(text: "Email", controller: controller, hindText: "Email"),
          SignUpFormfield(text: "Username", controller: controller2, hindText: "Username"),
          // ElevatedButton(onPressed: (){
          //           vm.register(vm.emailController.text, vm.passwordController.text, vm.usernameController.text);
          //         }, child: Text("Sign up"),)
        ],
      ),
    );
  }
}