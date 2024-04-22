import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/Screens/todo_details.dart';
import 'package:todo_list_provider/main.dart';

class ItemListWidget extends StatefulWidget {
  const ItemListWidget({super.key});

  @override
  State<ItemListWidget> createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends State<ItemListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: Consumer<TodoModel>(builder: (context, value, child) {
        if (value.items.isEmpty) {
          value.initState();
        }
        return ListView.builder(
          itemCount: value.items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            TodoDetails(todo: value.items[index])));
              },
              child: ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: value.items[index]['completed'],
                      onChanged: (val) {
                        value.editChecked(val, index);
                      },
                    ),
                    Text(
                      '${value.items[index]['id']}',
                    ),
                  ],
                ),
                title: Text(value.items[index]['todo']),
              ),
            );
          },
        );
      }),
    );
  }
}
