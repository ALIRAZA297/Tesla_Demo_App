import 'package:flutter/material.dart';
import 'package:flutter_application_06/Screens/detail_screen.dart';
import 'package:flutter_application_06/Screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DetailScreen.routeName:(context) => const DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
