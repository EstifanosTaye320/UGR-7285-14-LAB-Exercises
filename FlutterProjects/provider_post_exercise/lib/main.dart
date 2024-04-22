import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:todo_list_provider/Screens/todo_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoModel(),
      child: const MaterialApp(
        home: ItemListWidget(),
      ),
    ),
  );
}

class TodoModel extends ChangeNotifier {
  List<dynamic> items = [];

  Future<List<dynamic>> fetchItems() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load items');
    }
  }

  Future<List<dynamic>> extract() async {
    List<dynamic> temp = [];
    final data = await fetchItems();
    temp = data;
    return temp;
  }

  void initState() async {
    items = await extract();
    notifyListeners();
  }

  void editChecked(val, index) {
    items[index]["completed"] = val;
    notifyListeners();
  }
}
