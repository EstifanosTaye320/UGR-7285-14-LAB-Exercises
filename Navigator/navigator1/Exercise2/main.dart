import "package:flutter/material.dart";
import 'package:navigation/Exercise2/screeen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(),
    );
  }
}
