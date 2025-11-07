import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              PhysicalModel(
                color: Colors.transparent,
                    child: Container(
                clipBehavior: Clip.antiAlias,
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 211, 139, 239),
                            Color.fromARGB(255, 170, 47, 236),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/sunny.jpg',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 00),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phnom Penh',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Min : ${10.0} °C',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        'Max : ${30.0} °C',
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
                                      colors: [ 
                                       Color.fromARGB(255, 211, 139, 239),
                                       Color.fromARGB(255, 170, 47, 236),
                                      ]
                                    ),
                                    shape: BoxShape.circle,
                                  ),

                              )
                              ),
                              Text('${12.2}°C',style: TextStyle(fontSize: 20,color: Colors.white),)

                            ],
                          )
                        ],
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
