import 'package:flutter/material.dart';

class Ejercicios extends StatelessWidget {
  const Ejercicios({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
          color: const Color.fromARGB(255, 237, 227, 178),
          elevation: 8,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
          splashColor: Colors.black26,
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
               Ink.image(
           image: AssetImage("assets/espalda.jpg"),
           height: 100,
           width: 100,
           fit: BoxFit.cover,
              ),
              SizedBox(height: 6),
              Text("Espalda",
              style: TextStyle(fontSize: 25, color: Colors.black
                 ),  
               ),
               SizedBox(height: 6),
             ],
          ),
       ),
        ),
    );
  }
}

  