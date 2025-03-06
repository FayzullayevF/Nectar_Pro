import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          IconButton(onPressed: Navigator.of(context).pop, icon: Icon(Icons.back_hand)),
          SizedBox(height: 100,),
          Center(child: Text("Fatxullo")),
        ],
      ),
    );
  }
}