import 'package:color_screen/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorScreen());
}

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
