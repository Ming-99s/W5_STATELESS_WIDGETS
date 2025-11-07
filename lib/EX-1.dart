import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Hobbies' ,style:TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 68, 68, 68),
        ),
        body: Center(
          child: Padding(
            padding:EdgeInsets.all(40),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,
              children: [
                HobbiesCard(icon: FontAwesomeIcons.earthAmericas, text: 'Travalling', gradientColors: [Colors.green[300]! , Colors.green[600]!]),
                HobbiesCard(icon: FontAwesomeIcons.personSkating, text: 'Skateing', gradientColors: [const Color.fromARGB(255, 115, 115, 115) , const Color.fromARGB(255, 85, 87, 85)]),

              ],
            )
          )
            

        ),
      );   
  }
}

class HobbiesCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final List<Color>? gradientColors;

  HobbiesCard({
    required this.icon,
    required this.text,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors ?? [Colors.blue,Colors.blue]
      
        ),
        borderRadius: BorderRadius.circular(20)
      ),
        child: Row(
        children: [
          Container(
            padding:EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: FaIcon(icon, color: Colors.white,),
          ),
          Text(text , style: TextStyle(color: Colors.white))
          
    
        ],
    
      ),
    );
  }
}
