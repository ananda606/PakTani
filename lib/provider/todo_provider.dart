import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/todo_model.dart';

class TodoProvider with ChangeNotifier {
  List<TodoModel> _todolist = [];
  List<TodoModel> get todoList => _todolist;
  void addTodo(TodoModel todo) {
    _todolist.add(todo);
    notifyListeners();
  }
}
