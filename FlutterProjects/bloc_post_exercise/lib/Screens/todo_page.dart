import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_bloc/Screens/todo_details.dart';
import 'package:todo_list_bloc/main.dart';

class ItemListWidget extends StatefulWidget {
  const ItemListWidget({super.key});

  @override
  State<ItemListWidget> createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  @override
  Widget build(BuildContext context) {
    if (BlocProvider.of<TodoBloc>(context).state.isEmpty) {
      BlocProvider.of<TodoBloc>(context).add(TodoLoading());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: BlocBuilder<TodoBloc, List<dynamic>>(builder: (context, state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            TodoDetails(todo: state[index])));
              },
              child: ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: state[index]['completed'],
                      onChanged: (val) {
                        BlocProvider.of<TodoBloc>(context)
                            .add(TodoEditChecked(value: val, index: index));
                      },
                    ),
                    Text(
                      '${state[index]['id']}',
                    ),
                  ],
                ),
                title: Text(state[index]['title']),
              ),
            );
          },
        );
      }),
    );
  }
}
