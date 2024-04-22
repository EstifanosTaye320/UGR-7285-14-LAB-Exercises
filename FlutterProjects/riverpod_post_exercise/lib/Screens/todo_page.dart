import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list_riverpod/Screens/todo_details.dart';
import 'package:todo_list_riverpod/main.dart';

class ItemListWidget extends ConsumerStatefulWidget {
  const ItemListWidget({super.key});

  @override
  ConsumerState<ItemListWidget> createState() => _ItemListWidgetState();
}

class _ItemListWidgetState extends ConsumerState<ItemListWidget> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> items = ref.watch(TodoNotifierProvider);

    if (items.isEmpty) {
      ref.watch(TodoNotifierProvider.notifier).initState();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          TodoDetails(todo: items[index])));
            },
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: items[index]['completed'],
                    onChanged: (val) {
                      ref
                          .watch(TodoNotifierProvider.notifier)
                          .editChecked(val, index);
                    },
                  ),
                  Text(
                    '${items[index]['id']}',
                  ),
                ],
              ),
              title: Text(items[index]['title']),
            ),
          );
        },
      ),
    );
  }
}
