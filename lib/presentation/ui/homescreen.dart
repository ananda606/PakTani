import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/todo_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/provider/todo_provider.dart';
import 'package:uuid/uuid.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<TodoProvider>(
        builder: (context, value, child) {
          return ListView(
              children: value.todoList.isNotEmpty
                  ? [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Text('1'),
                      ),
                    ]
                  : [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Center(
                          child: Text('list kosong'),
                        ),
                      )
                    ]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AddEditTodoWidget(
                  title: "abc",
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddEditTodoWidget extends StatelessWidget {
  final String title;
  final TodoModel? todo;
  const AddEditTodoWidget({Key? key, required this.title, this.todo});
  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();
    if (todo != null) {
      _todoController.text = todo!.todo;
    }
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _todoController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                isDense: true,
                labelText: "todo",
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('batal'),
        ),
        TextButton(
          onPressed: () {
            if (todo != null) {
            } else {
              const uuid = Uuid();
              Provider.of<TodoProvider>(context, listen: false).addTodo(
                  TodoModel(id: uuid.v4(), todo: _todoController.text));
            }
            Navigator.pop(context);
          },
          child: Text('simpan'),
        ),
      ],
    );
  }
}
