import 'package:career_portfolio/about/about_screen.dart';
import 'package:career_portfolio/core/constants.dart';
import 'package:career_portfolio/home/home_screen.dart';
import 'package:career_portfolio/projects/projects_screen.dart';
import 'package:career_portfolio/sample.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nawaf's Career Portfolio",
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: kColorWhite),
            bodyMedium: TextStyle(color: kColorWhite)),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
