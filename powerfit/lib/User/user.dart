
import 'package:flutter/material.dart';

void main() => runApp(const User());

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 32, 79),
        body: Column(
        ),
      ),
    );
  }
}
