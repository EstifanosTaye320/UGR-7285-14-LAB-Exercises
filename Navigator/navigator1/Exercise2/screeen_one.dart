import "package:flutter/material.dart";
import 'package:navigation/Exercise2/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwo(),
                settings: const RouteSettings(arguments: "here you go"),
              ),
            );
          },
          child: const Text("Next"),
        ),
      ),
    );
  }
}
