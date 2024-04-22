import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:todo_list_riverpod/Screens/todo_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: ItemListWidget(),
      ),
    ),
  );
}

class TodoNotifier extends StateNotifier<List<dynamic>> {
  TodoNotifier() : super([]);

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
    state = await extract();
  }

  void editChecked(val, index) {
    List<dynamic> updatedList = List.from(state);
    updatedList[index]["completed"] = val;
    state = updatedList;
  }
}

final TodoNotifierProvider =
    StateNotifierProvider<TodoNotifier, List<dynamic>>((ref) => TodoNotifier());
