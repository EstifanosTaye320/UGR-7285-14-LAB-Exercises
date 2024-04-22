import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:todo_list_bloc/Screens/todo_page.dart';

import 'dart:convert';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TodoBloc(),
      child: const MaterialApp(
        home: ItemListWidget(),
      ),
    ),
  );
}

abstract class TodoEvent {}

final class TodoLoading extends TodoEvent {}

final class TodoEditChecked extends TodoEvent {
  TodoEditChecked({required this.value, required this.index});
  final bool? value;
  final int index;
}

class TodoBloc extends Bloc<TodoEvent, List<dynamic>> {
  TodoBloc() : super([]) {
    // on<TodoDecrementPressed>((event, emit) => emit(state - 1));

    Future<List<dynamic>> fetchItems() async {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
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

    on<TodoLoading>((event, emit) async => emit(await extract()));
    on<TodoEditChecked>((event, emit) {
      final List<dynamic> updatedState = List.from(state);
      updatedState[event.index]["completed"] = event.value;
      emit(updatedState);
    });
  }
}
