import 'package:flutter/material.dart';


class portada extends StatelessWidget {
  const portada({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/portada.jpg"),
                ),
              ),
            );
  }
}