import 'package:flutter/material.dart';
import 'package:greenzone_customer/screens/auth/login_screen.dart';
import 'package:greenzone_customer/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'GreenZone Customer',
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
