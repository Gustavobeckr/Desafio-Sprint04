import 'package:flutter/material.dart';
import 'package:todo_shered_preferences/src/data/models/todo_model.dart';

class AddTodo extends StatelessWidget {
  final TextEditingController _todoTitleController = TextEditingController();
  final TextEditingController _todoDescriptionController =
      TextEditingController();
  final TextEditingController _todoDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _todoTitleController,
              decoration: const InputDecoration(
                  label: Text('Title'), hintText: 'Write Todo Title'),
            ),
            TextFormField(
              controller: _todoDescriptionController,
              decoration: const InputDecoration(
                  label: Text('Description'),
                  hintText: 'Write Todo Description'),
            ),
            TextFormField(
              controller: _todoDateController,
              decoration: const InputDecoration(
                label: Text('Date'),
                hintText: 'Write Todo Date',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel', style: TextStyle(fontSize: 18)),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    _saveTodo();
                  },
                  child: const Text('Confirm', style: TextStyle(fontSize: 18)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _saveTodo() {
    TodoModel newTodo = TodoModel(
        title: _todoTitleController.text,
        description: _todoDescriptionController.text,
        date: _todoDateController.text,
        keepOn: true);
    print(newTodo);
  }
}
