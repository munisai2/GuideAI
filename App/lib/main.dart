import 'package:flutter/material.dart';
import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFE7245), // Accent color
          primary: const Color(0xFFFCAE40), // Primary color
        ),
      ),
      home: HomePage(),
    );
  }
}
