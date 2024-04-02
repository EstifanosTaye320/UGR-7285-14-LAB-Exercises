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
          color: Colors.blue[900],
          child: Column(
            children: [
              Row(
                children: [
                  _buildGenderCard(Icons.male, "Male"),
                  _buildGenderCard(Icons.female, "Female"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    const Text("HEIGHT"),
                    Slider(value: 0, onChanged: (curVal) {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  _buildWeightAgeCard("WEIGHT"),
                  _buildWeightAgeCard("AGE"),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: _buildBottomSheet(),
      ),
    );
  }

  Widget _buildGenderCard(IconData icon, String text) {
    return Expanded(
      child: Card(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 80.0),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeightAgeCard(String title) {
    return Expanded(
      child: Card(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              const Text("Value"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.minimize),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      height: kToolbarHeight,
      color: Colors.deepPurple,
      child: const Center(
        child: Text(
          "CALCULATE",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
