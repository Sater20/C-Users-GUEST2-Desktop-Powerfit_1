
import 'package:flutter/material.dart';
import 'package:powerfit/food-secciones/Fplatillos.dart';
import 'package:powerfit/food-secciones/Fportada.dart';

void main() => runApp(const Food());

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
           Fportada(),
           Fplatillos(),
          ],
      ),
      ),
    );
  }
}
