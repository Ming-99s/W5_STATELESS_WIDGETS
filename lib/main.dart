import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:w5_dart/flexBox.dart';
import 'EX-1.dart';
import 'EX-2.dart';
import 'EX-3.dart';
import 'EX-4.dart';

void main(){
    WidgetsFlutterBinding.ensureInitialized();
  runApp(
  
  DevicePreview(

    builder: (context) => MyApp(), // Wrap your app
  ),
);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example4()
      
    );
  }
}


