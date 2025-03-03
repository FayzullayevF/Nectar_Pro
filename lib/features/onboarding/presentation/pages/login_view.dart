import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 28,),
            Center(
              child: SvgPicture.asset(
                "assets/icons/carrot.svg",
                fit: BoxFit.cover,
                width: 47.84,
                height: 55.64,
              ),
            ),
            SizedBox(height: 101,),
            Text("salom"),
          ],
        ),]
      ),
    );
  }
}
