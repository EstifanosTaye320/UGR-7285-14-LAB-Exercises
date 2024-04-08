import "package:flutter/material.dart";

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen One")),
      body: Center(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "yest");
              },
              child: const Text("Go Back")),
        ),
      ),
    );
  }
}
