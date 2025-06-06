import 'package:flutter/material.dart';
import 'package:greenzone_customer/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'GreenZone Customer',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
