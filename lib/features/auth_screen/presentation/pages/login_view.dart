import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/presentations/nectar_button.dart';
import 'package:nectar/core/secure_storage.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/features/auth_screen/presentation/blocs/login_view_model.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/login_textfield.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/sign_up_form_field.dart';
import 'package:nectar/features/auth_screen/presentation/widgets/texts.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key, required this.vm});

  final LoginViewModel vm;
  final storage = SecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.fromLTRB(25, 28, 25, 165),
        children: [
          SizedBox(height: 50.h),
          SvgPicture.asset("assets/icons/carrot.svg"),
          SizedBox(height: 100.h),
          TextsMain(text: "Loging"),
          SizedBox(height: 15.h),
          Text(
            "Enter your email and password",
            style: TextStyle(
              color: AppColors.smallTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: "Gilroy",
            ),
          ),
          SizedBox(height: 40.h),
          SignUpFormfield(
            text: "Email",
            controller: vm.emailController,
            hindText: "Enter your email",
          ),
          SizedBox(height: 10.h),
          LoginTextfield(
            text: "Login",
            controller: vm.passwordController,
            hindText: "* * * * * * * *",
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.only(left: 263),
            child: Text(
              "Forgot password",
              style: TextStyle(fontSize: 14, color: AppColors.smallTextColor),
            ),
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: () => context.go("/home"),
            child: NectarButton(title: "Log in"),
          ),
          SizedBox(height: 25),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy",
                  ),
                ),
                SizedBox(width: 2),
                TextButton(
                  onPressed: () => context.go("/signup"),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gilroy",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           if (await vm.load() && context.mounted) {
//             String? token = await SecureStorage.getToken();
//             await showDialog(
//               context: context,
//               builder:
//                   (context) => Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.black,
//                     child: Text(
//                       "$token",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//             );
//           }
//         },
//         child: Icon(Icons.add),
//       ),