import 'package:flutter/material.dart';

class Ejercicios extends StatelessWidget {
  const Ejercicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Image(
        image: AssetImage("assets/biceps.jpg")
        ),
      );
  }
}