import "package:flutter/material.dart";

class TodoDetails extends StatelessWidget {
  const TodoDetails({super.key, required this.todo});
  final dynamic todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo["todo"]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Todo ID: ${todo["id"]}"),
            Text(todo["completed"] == true
                ? "This todo items is completed"
                : "This todo item is not completed"),
            Text("It belongs to user: ${todo["userId"]}"),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
