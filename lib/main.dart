import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/client.dart';
import 'package:nectar/features/auth_screen/data/repositories_impl/auth_repository.dart';
import 'package:nectar/features/auth_screen/presentation/blocs/login_view_model.dart';
import 'package:nectar/features/auth_screen/presentation/pages/home_screen.dart';
import 'package:nectar/features/auth_screen/presentation/pages/login_view.dart';
import 'package:nectar/features/auth_screen/presentation/pages/sign_up_view.dart';

void main() {
  runApp(MyApp());
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => LoginView(vm: LoginViewModel(repo: AuthRepository(client: ApiClient())),)),
    GoRoute(path: "/signup", builder: (context, state) => SignUpView()),
    GoRoute(path: "/home", builder: (context, state) => HomeScreen())
    ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(413.83, 896));
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: router);
  }
}
