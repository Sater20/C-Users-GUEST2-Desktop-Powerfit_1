import 'package:flutter/material.dart';

class  Fplatillos extends StatelessWidget {
  final double _platillosP = 30.0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
      padding: EdgeInsets.only(
        left: _platillosP,
        right: _platillosP,
        top: _platillosP,
      ),
      shrinkWrap: true,
      itemCount: _Pfood.length,
      itemBuilder: (BuildContext context, int index){ 
         return Padding(
          padding: EdgeInsets.only(
            bottom: 50.0,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
               Align(
                alignment: Alignment.centerRight,
                child: _infood(index),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: _foodimage(index),
              ),
            ],
          ),
        );
      },
      )
    );
  }
  
  Widget _foodimage(int index) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 167,
          width: 172,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 227, 178),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 25,
                spreadRadius: 4,
                offset: Offset(5,5),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: Image.asset( _Pfood[index].image,
           height: 95,
          ),
        ),
      ],
    );
  }
  
 Widget _infood(int index) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 180,
    width: 185,
    decoration: BoxDecoration(
      color: const Color.fromARGB(223, 233, 225, 191),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 20,
          spreadRadius: 4,
          offset: Offset(5, 5),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _Pfood[index].name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 137, 102, 102)
              ),
            ),
        
          ],
        ),
        SizedBox(
          height: 8,
        ),
         Text(
            _Pfood[index].calorias,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 137, 102, 102)
         ),
       ),
       SizedBox(
        height: 10,
       ),
        Text(
            _Pfood[index].peso,
            style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 137, 102, 102)
         ),
       ),
       SizedBox(
        height: 25,
       ),
      ],
    ),
  );
 }
}

List<Food> _Pfood = [
  Food(
    name: "Bowl Fit", 
    calorias: "Caloria:450", 
    peso: "Peso:320g", 
    image: "assets/Bowl.jpg",
    ),
   Food(
    name: "Mix Power", 
    calorias: "Caloria:1230", 
    peso: "200g", 
    image: "assets/frutos.jpg",
    ),
   Food(
    name: "Lasaña Veggie", 
    calorias: "Caloria:750", 
    peso: "Peso:400", 
    image: "assets/lasaña.jpg",
    ),
   Food(
    name: "Salmón Omega", 
    calorias: "Caloria:200", 
    peso: "Peso:250", 
    image: "assets/salmonp.jpg",
    ),
  Food(
    name: "Tortilla Fit", 
    calorias: "Caloria:230", 
    peso: "Peso:150", 
    image: "assets/tortilla.jpg",
    ),
   Food(
    name: "Proteína AM", 
    calorias: "Caloria:400", 
    peso: "Peso:130", 
    image: "assets/avena.jpg",
    ),
  Food(
    name: "Pollo Power", 
    calorias: "Caloria:650", 
    peso: "Peso:340", 
    image: "assets/ensaladapo.jpg",
    ),
   Food(
    name: "Quinoa Med", 
    calorias: "Caloria:420", 
    peso: "Peso:380", 
    image: "assets/quinoa.jpg",
    ),

];

class Food {
  final String name;
  final String calorias;
  final String peso;
  final String image;

  Food({required this.name, required this.calorias, required this.peso, required this.image});
}