import 'package:flutter/material.dart';


class Fportada extends StatelessWidget {
  const Fportada({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Pfood.jpg"))),
                child: Padding(
                  padding: EdgeInsets.only(top: 44 ,  right: 16 , left: 16 , bottom: 24), 
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                     children: [
                         Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                           children: [
                             Text("PowerFit"),
                      Row(children: [
                        Text("Tu Fuerza"),
                          const CircleAvatar(
                            radius: 2,
                            backgroundColor:  const Color.fromARGB(255, 2, 133, 10),
                          ),
                           Row(children: [
                        Text("Tu Ritmo"),
                      ],
                      ),
                  ],
                )
              ],
            ),
                  ],
                ),
              ],
              ), 
             ),
            );
  }
}