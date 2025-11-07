import 'package:flutter/material.dart';

enum WeatherOfLoc{
  PhnomPenh('assets/images/cloud.jpg' , '10.0' , '30.0', '12.2'),
  Paris('assets/images/sunnycloudy.jpg' , '10.0' , '40.0', '22.2'),
  Rome('assets/images/sunny.jpg', '10.0' , '40.0' , '45.2'),
  Toulouse('assets/images/verycloud.jpg' , '10.0' , '40.0' , '45.2');


  final String weatherImage;
  final String min;
  final String max;
  final String avg;

  const WeatherOfLoc(this.weatherImage, this.min,this.max,this.avg);


}





class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              WeatherForecast(weather: WeatherOfLoc.PhnomPenh,),
              WeatherForecast(weather: WeatherOfLoc.Paris , gradientColors: [const Color.fromARGB(255, 147, 255, 192),const Color.fromARGB(255, 9, 130, 88)],),
              WeatherForecast(weather: WeatherOfLoc.Rome , gradientColors: [const Color.fromARGB(255, 255, 131, 131), const Color.fromARGB(255, 159, 23, 13)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),
              WeatherForecast(weather: WeatherOfLoc.Toulouse , gradientColors: [const Color.fromARGB(255, 242, 197, 130) , const Color.fromARGB(255, 255, 161, 67)],),




            ],
          ),
        ),
      ),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  final WeatherOfLoc weather;
  final List<Color> gradientColors;

  const WeatherForecast({
    required this.weather,
    this.gradientColors = const [Color.fromARGB(255, 223, 152, 247),Color.fromARGB(255, 103, 7, 141)]
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
      margin: EdgeInsets.symmetric(vertical: 10),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: gradientColors
        ),
        boxShadow: [
          BoxShadow(
            color:  Color.fromARGB(79, 0, 0, 0),
            blurRadius: 5,
            offset: Offset(3, 3)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    weather.weatherImage,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        weather.name,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Min : ${weather.min} °C',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Max : ${weather.max} °C',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: -10,
                bottom: -60,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: gradientColors
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                '${weather.avg}°C',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
