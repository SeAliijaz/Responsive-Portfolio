import 'package:flutter/material.dart';
import 'package:responsive_portfolio/Screens/home_screen.dart';
import 'package:responsive_portfolio/Screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive-Portfolio",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
