import 'package:flutter/material.dart';


class Fportada extends StatelessWidget {
  const Fportada({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Pfood.jpg")
                ),
              ),  
            );
  }
}