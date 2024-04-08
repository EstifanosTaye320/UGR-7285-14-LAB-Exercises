import "package:flutter/material.dart";

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),
      body: Center(
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
