import 'package:flutter/material.dart';
import 'package:powerfit/Home/secciones-home/Ejercicios.dart';
import 'package:powerfit/Home/secciones-home/home/portada.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            portada(),
            Ejercicios(),
          ],
      ),
      ),
    );
  }
}