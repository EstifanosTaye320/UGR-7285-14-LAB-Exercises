import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BMI CALCULATOR"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          color: Colors.purple,
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    child: Container(
                        color: Colors.deepPurple,
                        child: const Column(
                          children: [Icon(Icons.male), Text("Male")],
                        )),
                  ),
                  Card(
                    child: Container(
                        color: Colors.deepPurple,
                        child: const Column(
                          children: [Icon(Icons.male), Text("Male")],
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: Colors.deepPurple,
          child: _buildBottomSheet(),
        ),
      ),
    );
  }
}

Widget _buildBottomSheet() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    height: kToolbarHeight, // Set the same height as the AppBar
    color: Colors.deepPurple, // Use the same color as the AppBar
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("CALCULATOR", style: TextStyle(color: Colors.white, fontSize: 20))
      ],
    ),
  );
}
