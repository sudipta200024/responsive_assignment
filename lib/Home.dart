import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Responsive Design",
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}