import 'package:flutter/material.dart';
import 'package:powerfit/Food/food.dart';
import 'package:powerfit/Home/secciones-home/home/home.dart';
import 'package:powerfit/User/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _botom = 0; 
  List<Widget> pagina = [
     Home(),
     Food(),
     User(), 
  ];
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pagina[_botom],
          bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _botom = index; 
            });
          },
          currentIndex: _botom,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "food"),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: "user"),
          ],
        ),
       ),
       theme: ThemeData.dark().copyWith(
          textTheme: TextTheme()
       ),
    );
  }
}