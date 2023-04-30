import 'package:dictionary_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dictionary_app",
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}